//
//  ImageHelper.swift
//  CoinNews
//
//  Created by itsmuffintime on 20.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import SwiftUI

class ImageHelper {
  static func download(url: String, completion: @escaping ((UIImage?) -> Void)) {
    if let url = URL(string: url) {
      URLSession.shared.dataTask(with: url) { (data, response, error) in
        if let _ = error {
          completion(nil)
          return
        }
        if let response = response as? HTTPURLResponse {
          if response.statusCode >= 200, let data = data {
            if let uiImage = UIImage(data: data) {
              completion(uiImage)
              return
            }
          }
        }
        completion(nil)
      }.resume()
    }
  }
}
