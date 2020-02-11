//
//  GeckoDateFormatter.swift
//  CoinNews
//
//  Created by itsmuffintime on 30.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation


public class GeckoDateFormatter: DateFormatter {
  
  public override init() {
    super.init()
    dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
