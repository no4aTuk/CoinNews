//
//  CoinsMarketsViewModel.swift
//  CoinNews
//
//  Created by itsmuffintime on 14.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import Combine

class CoinsMarketsViewModel: BaseViewModel {
  @Published var coins = [Coin]()
  
  private let service: CoinsService
  
  init(coinsService: CoinsService) {
    self.service = coinsService
    super.init()
    self.loadCoinsMarkets()
  }
  
  func loadCoinsMarkets(currency: String = "usd") {
    self.service.getCoinsMarkets(currency: currency)
    .sink(receiveCompletion: { completion in
      if case .failure(let error) = completion {
        self.error = error
      }
    }, receiveValue: { stories in
      self.coins = stories
      self.error = nil
    })
    .store(in: &subscriptions)
  }
}
