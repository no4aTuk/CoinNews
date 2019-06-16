//
//  BaseViewController.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation
import RxSwift

class BaseViewController<T: BaseViewModel>: UIViewController {
    
    var viewModel: T!
    var bag = DisposeBag()
    
    required init(viewModel: T) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = .white
        //This will remove text on back btn
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Dude, do not use storyboards okda?")
    }
}
