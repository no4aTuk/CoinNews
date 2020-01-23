//
//  ImageLoader.swift
//  CoinNews
//
//  Created by itsmuffintime on 16.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ImageLoader : ObservableObject {
  
  @Published var image: Image?
  @Published private(set) var state: LoadingState = .initial
  
  private var memCacher: ImageMemCacher
  private var fileCacher: FileCacher
  
  private static var loadingImages: [String] = []
  private static var serialQueue = DispatchQueue(label: "images_loader_queue")
  
  init(memCacher: ImageMemCacher = ImageMemCacher.shared,
       fileCacher: FileCacher = FileCacher.shared) {
    self.memCacher = memCacher
    self.fileCacher = fileCacher
  }
  
  enum LoadingState : Hashable {
    case initial
    case loading
    case loaded
    case error
  }
  
  func load(url: String) {
    //Prevent load new image until previous is in loading state
    guard Self.loadingImages.contains(url) == false && state != .loaded else {
      print("Warning! image is loading! ", URL(string: url)?.pathComponents.last! ?? "-")
      return
    }
    state = .loading
    Self.serialQueue.sync {
        Self.loadingImages.append(url)
    }

    let cacheCompletion = { [weak self] (uiImage: UIImage) in
      if let loadingImagesIndex = Self.loadingImages.firstIndex(of: url) {
        Self.loadingImages.remove(at: loadingImagesIndex)
      }
      DispatchQueue.main.async {
        self?.image = Image(uiImage: uiImage)
        self?.state = .loaded
      }
    }
    if let uiImageInMemory = memCacher.load(key: url) {
      cacheCompletion(uiImageInMemory)
      return
    }
    if let uiImageFromDisk = fileCacher.loadImage(imageUrl: url) {
      memCacher.save(image: uiImageFromDisk, key: url)
      cacheCompletion(uiImageFromDisk)
      return
    }
    
    print("image start load ", URL(string: url)?.pathComponents.last! ?? "-")
    ImageHelper.download(url: url) { [weak self] (image) in
      guard let image = image else {
        return
      }
      if let imageData = image.pngData() {
        do {
          try self?.fileCacher.saveImage(image: imageData, imageUrl: url)
        } catch {
          self?.state = .error
          self?.image = nil
          if let loadingImagesIndex = Self.loadingImages.firstIndex(of: url) {
            Self.loadingImages.remove(at: loadingImagesIndex)
          }
        }
      }
      cacheCompletion(image)
    }
  }
  
  private func checkState(forUrl url: String) {
    
  }
  
  func cancel() {
//    image = nil
//    state = .initial
  }
}
