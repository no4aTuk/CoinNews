//
//  ChartViewController.swift
//  CoinNews
//
//  Created by Apple on 14/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation
import UIKit

final class ChartViewController: BaseViewController<ChartViewModel> {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "Hello chart!"
        label.textColor = UIColor.purple
        label.textAlignment = .center
        label.frame = .init(origin: self.view.center.applying(CGAffineTransform(translationX: -75, y: 0)), size: .init(width: 150, height: 50))
        
        self.view.addSubview(label)
    }
}
