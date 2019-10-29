//
//  LoginViewModel.swift
//  CoinNews
//
//  Created by Vonny on 19/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class LoginViewModel: BaseViewModel {
    let buttonTapObservable = PublishSubject<Void>()
    
    let goNextObservable = PublishSubject<Void>()
    
    override init() {
        super.init()
        buttonTapObservable.subscribe(onNext: { _ in
            AppDelegate.shared.isLoggedIn = true
            self.goNextObservable.onNext(())
        }).disposed(by: bag)
    }
}
