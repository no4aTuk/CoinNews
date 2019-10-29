//
//  NewsViewController.swift
//  CoinNews
//
//  Created by Apple on 14/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation
import RxCocoa

final class NewsViewController: BaseViewController<NewsViewModel> {
    
    lazy var nextButton: UIButton = {
        let btn = UIButton(frame: CGRect(origin: self.view.center, size: .init(width: 100, height: 50)))
        btn.setTitle("Go next", for: .normal)
        btn.setTitleColor(.brown, for: .normal)
        btn.center = view.center
        self.view.addSubview(btn)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupReactive()
    }
}

//MARK: Private func
extension NewsViewController {
    private func setupUI() {
        let label = UILabel()
        label.text = "Hello news!"
        label.textColor = UIColor.purple
        label.textAlignment = .center
        label.frame = .init(origin: self.view.center.applying(CGAffineTransform(translationX: -75, y: 0)), size: .init(width: 150, height: 50))
        
        self.view.addSubview(label)
    }
    
    private func setupReactive() {
        let btnCotnrolEvent = nextButton.rx.tap
        btnCotnrolEvent
            .bind(to: viewModel.buttonTapObservable)
            .disposed(by: bag)
    }
}
