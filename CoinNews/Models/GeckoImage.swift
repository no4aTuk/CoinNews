//
//  GeckoImage.swift
//  CoinNews
//
//  Created by itsmuffintime on 30.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

struct GeckoImage: Codable {
  var thumb: String?
  var small: String?
  var large: String?
}

//      "thumb": "https://assets.coingecko.com/coins/images/19/thumb/dash-logo.png?1548385930",
//      "small": "https://assets.coingecko.com/coins/images/19/small/dash-logo.png?1548385930",
//      "large": "https://assets.coingecko.com/coins/images/19/large/dash-logo.png?1548385930"
