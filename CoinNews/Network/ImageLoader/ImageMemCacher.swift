//
//  ImageCacher.swift
//  CoinNews
//
//  Created by itsmuffintime on 21.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import UIKit

public class ImageMemCacher {
  private let cache: NSCache<NSString, UIImage> = {
    let cache = NSCache<NSString, UIImage>()
    cache.countLimit = 150
    return cache
  }()
  
  public static var shared: ImageMemCacher = ImageMemCacher()
  private init() {}
  
  public func save(image: UIImage, key: String) {
    let nsString = NSString(string: key)
    self.cache.setObject(image, forKey: nsString)
  }
  
  public func load(key: String) -> UIImage? {
    let nsString = NSString(string: key)
    return cache.object(forKey: nsString)
  }
  
  public func clear() {
    cache.removeAllObjects()
  }
}
