//
//  URLImage.swift
//  CoinNews
//
//  Created by itsmuffintime on 16.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import SwiftUI
import Combine

struct URLImage: View {
  
  @ObservedObject var imageLoader: ImageLoader = ImageLoader()
  
  let placeholder: Image
  let url: String
  
  init(url: String, placeholder: Image = Image("coins_tab")) {
    self.placeholder = placeholder
    self.url = url
  }
  
  var body: some View {
    if let image = imageLoader.image {
      return image
      .resizable()
        .onAppear {}
        .onDisappear {}
    } else {
      return placeholder
        .onAppear {
          self.imageLoader.load(url: self.url)
      }
      .onDisappear {
        self.imageLoader.cancel()
      }
    }
  }
}

struct URLImage_Previews: PreviewProvider {
  static var previews: some View {
    URLImage(url: "https://assets.coingecko.com/coins/images/646/large/iExec_RLC.png?1547034373")
  }
}
