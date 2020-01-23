//
//  Coin.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation
import SwiftUI

extension Coin {
//  enum CodingKeys: String, CodingKey {
//    case id = "id"
//    case symbol = "symbol"
//    case name = "name"
//    case image = "image"
//    case currentPrice = "current_price"
//    case marketCap = "market_cap"
//    case marketCapRank = "market_cap_rank"
//    case totalVolume = "total_volume"
//    case high24h = "high_24h"
//    case low24h = "low_24h"
//    case priceChange24h = "price_change_24h"
//    case priceChangePercentage24h = "price_change_percentage_24h"
//    case marketCapChange24h = "market_cap_change_24h"
//    case marketCapChangePercentage24h = "market_cap_change_percentage_24h"
//    case circulatingSupply = "circulating_supply"
//    case totalSupply = "total_supply"
//    case ath = "ath"
//    case athChangePercentage = "ath_change_percentage"
//    case athDate = "ath_date"
//    case roi = "roi"
//    case lastUpdated = "last_updated"
//    case sparklineIn7d = "sparkline_in_7d"
//    case priceChangePercentage24hInCurrency = "price_change_percentage_24h_in_currency"
//  }
}

struct Coin: Identifiable, Codable {
  let id: String
  let symbol: String
  let name: String
  let image: String
  let current_price: Double
  let market_cap: Double
  let market_cap_rank: Int
  let total_volume: Double
  let high_24h: Double
  let low_24h: Double
  let price_change_24h: Double
  let price_change_percentage_24h: Double
  let market_cap_change_24h: Double
  let market_cap_change_percentage_24h: Double
  let circulating_supply: Double
  let total_supply: Double?
  let ath: Double
  let ath_change_percentage: Double
  let ath_date: String
  let roi: ROI?
  let last_updated: String
  let sparkline_in_7d: String?
  let price_change_percentage_24h_in_currency: String?
}

extension Coin {
  init() {
    id = ""
    symbol = ""
    name = ""
    image = ""
    current_price = 0
    market_cap = 0
    market_cap_rank = 0
    total_volume = 0
    high_24h = 0
    low_24h = 0
    price_change_24h = 0
    price_change_percentage_24h = 0
    market_cap_change_24h = 0
    market_cap_change_percentage_24h = 0
    circulating_supply = 0
    total_supply = 0
    ath = 0
    ath_change_percentage = 0
    ath_date = ""
    roi = nil
    last_updated = ""
    sparkline_in_7d = nil
    price_change_percentage_24h_in_currency = nil
  }
}

//{
//  "id": "bitcoin",
//  "symbol": "btc",
//  "name": "Bitcoin",
//  "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
//  "current_price": 528402,
//  "market_cap": 9595940860385,
//  "market_cap_rank": 1,
//  "total_volume": 2768882090362,
//  "high_24h": 534378,
//  "low_24h": 494445,
//  "price_change_24h": 33139,
//  "price_change_percentage_24h": 6.69129,
//  "market_cap_change_24h": 602645426128,
//  "market_cap_change_percentage_24h": 6.70105,
//  "circulating_supply": 18160287,
//  "total_supply": 21000000,
//  "ath": 1157051,
//  "ath_change_percentage": -54.58869,
//  "ath_date": "2017-12-16T00:00:00.000Z",
//  "roi": null,
//  "last_updated": "2020-01-14T16:47:57.508Z",
//  "sparkline_in_7d": {
//    "price": [
//      7881.1235164801565
//    ]
//  },
//  "price_change_percentage_24h_in_currency": 6.69128714373749
//}
