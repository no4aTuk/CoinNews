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
        ctrl.tabBar.tintColor = AppConstants.Colors.green
        
        let listCoordinator = CoinsListCoordinator.init()
        let newsCoordinator = NewsCoordinator.init()
        let chartCoodinator = ChartCoordinator.init()
        childCoordinators = [listCoordinator, newsCoordinator, chartCoodinator]
        
        let listCtrl = listCoordinator.prepare()
        let newsCtrl = newsCoordinator.getInstance()
        let chartCtrl = chartCoodinator.getInstance()
        
        listCtrl.tabBarItem = UITabBarItem(title: AppText.coins_tab, image: AppImages.coinsTab, selectedImage: AppImages.coinsTab)
        newsCtrl.tabBarItem = UITabBarItem(title: AppText.news_tab, image: AppImages.newsTab, selectedImage: AppImages.newsTab)
        chartCtrl.tabBarItem = UITabBarItem(title: AppText.chart_tab, image: AppImages.chartsTab, selectedImage: AppImages.chartsTab)
        
        let controllers = [listCtrl, newsCtrl, chartCtrl]
        ctrl.setViewControllers(controllers.map({ UINavigationController(rootViewController: $0) }), animated: false)
        
        return ctrl
    }()
    
    func start(in window: UIWindow) {
        window.frame = UIScreen.main.bounds
        window.rootViewController = rootCtrl
        window.makeKeyAndVisible()
    }
    
    func doSomething() {
        
    }
}
