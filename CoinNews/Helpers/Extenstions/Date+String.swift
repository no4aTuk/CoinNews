//
//  Date+String.swift
//  CoinNews
//
//  Created by itsmuffintime on 30.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

let dateFormatter = DateFormatter()

extension Date {
  func toString() -> String {
    dateFormatter.dateStyle = .short
    return dateFormatter.string(from: self)
  }
}
