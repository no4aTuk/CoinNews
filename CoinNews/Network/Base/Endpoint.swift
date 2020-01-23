//
//  Endpoint.swift
//  CoinNews
//
//  Created by itsmuffintime on 23.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

enum EndPoint {
  
  static let baseURL = URL(string: "https://api.coingecko.com/api/v3")!
  
  case coinsMarkets(currency: String)
  
  var path: String {
    switch self {
    case .coinsMarkets:
      return "coins/markets"
    }
  }
  
  var method: HttpMethod {
    switch self {
    case .coinsMarkets:
      return .get
    }
  }
  
  var parameters: JSONParameters {
    switch self {
    case .coinsMarkets(let currency):
      return [
        "currency" : currency
      ]
    }
  }
}

