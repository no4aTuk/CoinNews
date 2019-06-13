//
//  CoinsListCoordinator.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation

class CoinsListCoordinator: BaseCoordinator {
    
    func show(in window: UIWindow) {
        let service = CoinsListService()
        let viewModel = CoinsListViewModel(coinListService: service)
        let ctrl = CoinsListViewController(viewModel: viewModel)
        let navCtrl = UINavigationController(rootViewController: ctrl)
        window.makeKeyAndVisible()
        window.rootViewController = navCtrl
    }
}
