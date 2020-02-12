//
//  Project.swift
//  CoinNews
//
//  Created by itsmuffintime on 30.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

extension Project {
  enum CodingKeys: String, CodingKey {
    case id = "id"
    case name = "name"
    case symbol = "symbol"
    case image = "image"
  }
}

struct Project: Codable {
  var id: String
  var name: String
  var symbol: String
  var image: GeckoImage?
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.id = container[.id]
    self.name = container[.name]
    self.symbol = container[.symbol]
    self.image = container[.image]
  }
}
