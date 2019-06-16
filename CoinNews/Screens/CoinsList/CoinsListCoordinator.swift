//
//  CoinsListCoordinator.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation

class CoinsListCoordinator: BaseCoordinator {
    func prepare() -> CoinsListViewController {
        let service = CoinsListService()
        let viewModel = CoinsListViewModel(coinListService: service)
        let ctrl = CoinsListViewController(viewModel: viewModel)
        ctrl.title = AppText.coins_tab
        return ctrl
    }
}
