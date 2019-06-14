//
//  NewsCoordinator.swift
//  CoinNews
//
//  Created by Apple on 14/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation

final class NewsCoordinator: BaseCoordinator {
    func getInstance() -> NewsViewController {
        let ctrl = NewsViewController(viewModel: NewsViewModel())
        ctrl.title = "News"
        return ctrl
    }
}
