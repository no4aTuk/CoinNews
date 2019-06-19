//
//  LoginViewController.swift
//  CoinNews
//
//  Created by Vonny on 19/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation
import UIKit

final class LoginViewController: BaseViewController<LoginViewModel> {
    
    lazy var nextButton: UIButton = {
        let btn = UIButton(frame: CGRect(origin: self.view.center, size: .init(width: 100, height: 50)))
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        btn.setTitle("Login", for: .normal)
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
extension LoginViewController {
    private func setupUI() {
        let label = UILabel()
        label.text = "Click btn!"
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
