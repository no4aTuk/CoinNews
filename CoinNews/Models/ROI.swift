//
//  ROI.swift
//  CoinNews
//
//  Created by itsmuffintime on 14.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

extension ROI {
  enum Keys {
    static let times = "times"
    static let currency = "currency"
    static let percentage = "percentage"
  }
}

struct ROI: Codable {
  let times: Double = 0.0
  let currency: String = ""
  let percentage: Double = 0.0
}
