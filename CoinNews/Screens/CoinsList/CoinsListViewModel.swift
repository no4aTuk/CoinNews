//
//  CoinsListViewModel.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation

class CoinsListViewModel: BaseViewModel {
    
    private var service: CoinsListService
    
    init(coinListService: CoinsListService) {
        self.service = coinListService
    }
    
    public func loadData() {
        let _ = self.service.getCoinsList()
    }
}
