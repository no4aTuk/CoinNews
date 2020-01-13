//
//  AppText.swift
//  CoinNews
//
//  Created by Vonny on 16/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation

extension String {
    func localized() -> String {
        let result = NSLocalizedString(self, comment: "")
        if result.isEmpty { return self }
        return result
    }
}

struct AppText {
    static let coins_tab = "coins_tab".localized()
    static let news_tab = "news_tab".localized()
    static let chart_tab = "chart_tab".localized()
    static let favorites_only = "favorites_only".localized()
}
