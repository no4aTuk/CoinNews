//
//  CoinsService.swift
//  CoinNews
//
//  Created by itsmuffintime on 13.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

enum Loh: String {
  case log = "asdasdsa"
}

enum CoinsRouter: BaseRouter {
  
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
        "vs_currency" : currency
      ]
    }
  }
}

