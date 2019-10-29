//
//  CoinsListViewController.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation
import UIKit

class CoinsListViewController: BaseViewController<CoinsListViewModel> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.title = "Coins"
        
        let label = UILabel()
        label.text = "Hello world"
        label.textColor = UIColor.purple
        label.textAlignment = .center
        label.frame = .init(origin: self.view.center.applying(CGAffineTransform(translationX: -75, y: 0)), size: .init(width: 150, height: 50))
        
        self.view.addSubview(label)
    }
}
