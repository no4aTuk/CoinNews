//
//  MockResources.swift
//  CoinNews
//
//  Created by itsmuffintime on 16.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

public class MockResources {
  private static let decoder = JSONDecoder()
  
  static var coinsMarkets: [Coin] {
    return getResourceFromFile(name: "coins_markets") ?? []
  }
  
  static var coinMarket: Coin? {
    return coinsMarkets.first
  }
  
  private static func getResourceFromFile<T: Decodable>(name: String, type: String = "json") -> T? {
    let fileUrl = Bundle.main.url(forResource: name, withExtension: type)
    if let url = fileUrl {
      do {
        let data = try Data(contentsOf: url)
        let object = try decoder.decode(T.self, from: data)
        return object
      } catch {
        print("Error:! ", error.localizedDescription)
      }
    }
    return nil
  }
}
