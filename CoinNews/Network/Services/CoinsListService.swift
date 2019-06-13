//
//  CoinsListService.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation
import RxSwift

final class CoinsListService: BaseApiService {
    
    public func getCoinsList() -> Observable<[Coin]> {
        return ApiClient.shared.request(CoinsListRouter.getCoins)
    }
}
