//
//  UIFont+Custom.swift
//  CoinNews
//
//  Created by Vonny on 16/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    
    enum FontStyle: String {
        case regular = "TrebuchetMS"
        case bold = "TrebuchetMS-Bold"
        case boldItalic = "Trebuchet-BoldItalic"
        case italic = "TrebuchetMS-Italic"
    }
    
    static func appFont(_ fontName: FontStyle, size: CGFloat) -> UIFont {
        return UIFont(name: fontName.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
}
