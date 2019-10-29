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
        let vm = NewsViewModel()
        let ctrl = NewsViewController(viewModel: vm)
        vm.goNextObservable.subscribe(onNext: { _ in
            //let newCtrl = ViewController()
            //self.push(newCtrl, rootVC: ctrl)
            //self.present(newCtrl, rootVC: ctrl)
            //DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            //    let new = ViewController()
            //    self.push(new, rootVC: newCtrl)
            //})
            LoginCoordinator.init().start(in: AppDelegate.shared.window!)
        }).disposed(by: ctrl.bag)
        ctrl.title = AppText.news_tab
        return ctrl
    }
}
