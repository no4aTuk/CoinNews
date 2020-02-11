//
//  Coin.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation
import SwiftUI

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
  let ath_date: Date
  let roi: ROI?
  let last_updated: String
  let sparkline_in_7d: String?
  let price_change_percentage_24h_in_currency: String?
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
