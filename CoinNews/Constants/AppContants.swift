//
//  AppContants.swift
//  CoinNews
//
//  Created by Vonny on 16/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation
import UIKit

extension RawRepresentable where Self.RawValue == UIColor {
    
}

struct AppConstants {
    
    enum Colors {
        static let green = UIColor(named: "main_geen")
        static let white = UIColor.white
        static let mainBlack = UIColor(named: "main_black")
        static let orange = UIColor(named: "main_orange")
        static let blue = UIColor(named: "main_blue")
        static let red = UIColor(named: "main_red")
        static let gray = UIColor(named: "main_gray")
        static let lightGray = UIColor(named: "light_gray")
        static let purple = UIColor(named: "main_purple")
    }
    
    enum Font: String {
        case bold = "Keffa-bold"
        case regular = "Keffa-regular"
    }
}
