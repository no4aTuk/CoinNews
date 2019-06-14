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
    
    let goNextObservable: ObserverType!
    
    
    override init() {
        goNextObservable = buttonTapObservable.asObserver()
        super.init()
        let goNextObservable = buttonTapObservable.asObservable()
        buttonTapObservable.subscribe(onNext: { _ in
           
        }).disposed(by: bag)
    }
}
