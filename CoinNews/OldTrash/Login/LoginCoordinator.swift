//
//  LoginCoordinator.swift
//  CoinNews
//
//  Created by Vonny on 19/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation

class LoginCoordinator: BaseCoordinator {
    func start(in window: UIWindow) {
        let vm = LoginViewModel()
        let ctrl = LoginViewController(viewModel: vm)
        vm.goNextObservable.subscribe(onNext: { _ in
            RootCoordinator.init().start(in: window)
        }).disposed(by: ctrl.bag)
        ctrl.title = AppText.news_tab
        
        
        showRootAnimated(controller: ctrl, in: window)
    }
}
