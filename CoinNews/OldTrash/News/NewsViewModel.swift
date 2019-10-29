//
//  NewsViewModel.swift
//  CoinNews
//
//  Created by Apple on 14/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation
import RxSwift

final class NewsViewModel: BaseViewModel {
    let buttonTapObservable = PublishSubject<Void>()
    
    let goNextObservable = PublishSubject<Void>()
    
    override init() {
        super.init()
        buttonTapObservable.subscribe(onNext: { _ in
            AppDelegate.shared.isLoggedIn = false
            self.goNextObservable.onNext(())
        }).disposed(by: bag)
    }
}
