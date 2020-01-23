//
//  FileChacher.swift
//  CoinNews
//
//  Created by itsmuffintime on 21.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import UIKit

public class FileCacher {
  public static var shared: FileCacher = FileCacher()
  private lazy var fileManager = FileManager.default
  private lazy var cacheFolder = self.fileManager.urls(
      for: .documentDirectory,
      in: .userDomainMask
    ).first //.appendingPathComponent("images", isDirectory: true)
  
  private init() { }
  
  public func saveImage(image: Data, imageUrl: String) throws {
    if let url = URL(string: imageUrl),
      let name = url.pathComponents.last {
      try self.save(data: image, name: name)
    }
  }
  
  public func save(data: Data, name: String) throws {
    guard let folderUrl = cacheFolder else {
      throw AppError.cacheFolderNotFound
    }
    let fileURL = folderUrl.appendingPathComponent(name)
    try data.write(to: fileURL)
  }
  
  public func loadImage(imageUrl: String) -> UIImage? {
    if let url = URL(string: imageUrl),
      let name = url.pathComponents.last {
      if let data = load(name: name) {
        return UIImage(data: data)
      }
    }
    return nil
  }
  
  public func load(name: String) -> Data? {
    guard let folderUrl = cacheFolder else {
      return nil
    }
    let fileUrl = folderUrl.appendingPathComponent(name)
    let data: Data? = try? Data(contentsOf: fileUrl)
    return data
  }
}
