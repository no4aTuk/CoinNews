//
//  ViewController.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Some ctrl"
    }
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.lightGray
        self.view.frame = UIScreen.main.bounds
    }
}

