//
//  RootCoordinator.swift
//  CoinNews
//
//  Created by Apple on 14/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation

enum AppTab: Int {
    case news = 0
    case list
    case chart
}

class RootCoordinator: BaseCoordinator {
    var childCoordinators: [BaseCoordinator] = []
    
    lazy var rootCtrl: UITabBarController = {
        let ctrl = UITabBarController()
        
        let listCtrl = CoinsListCoordinator.init().getInstance()
        let newsCtrl = NewsCoordinator.init().getInstance()
        let chartCtrl = ChartCoordinator.init().getInstance()
        
        listCtrl.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: AppTab.list.rawValue)
        newsCtrl.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: AppTab.news.rawValue)
        chartCtrl.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: AppTab.chart.rawValue)
        
        let controllers = [listCtrl, newsCtrl, chartCtrl]
        ctrl.setViewControllers(controllers.map({ UINavigationController(rootViewController: $0) }), animated: false)
        
        return ctrl
    }()
    
    func start(in window: UIWindow) {
        window.frame = UIScreen.main.bounds
        window.rootViewController = rootCtrl
        window.makeKeyAndVisible()
    }
}
