//
//  CoinsService.swift
//  CoinNews
//
//  Created by itsmuffintime on 14.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import Combine

final class CoinsService: BaseApiService, ICoinService {
  func getCoinsMarkets(currency: String) -> AnyPublisher<[Coin], ApiError> {
    let router = CoinsRouter.coinsMarkets(currency: currency)
    return execute(router: router)
  }

//  public func getCoinsMarketsFake() -> [Coin] {
//    return MockResources.coinsMarkets
//  }
//
//  public func getCoinsMarketsFake() -> Coin? {
//    return MockResources.coinMarket
//  }
}
