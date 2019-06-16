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
        
        buttonTapObservable.subscribe({ _ in
            self.goNextObservable.onNext(())
        }).disposed(by: bag)
    }
}
