//
//  NewsResponseModel.swift
//  CoinNews
//
//  Created by itsmuffintime on 30.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

struct NewsResponseModel: Codable {
  var status_updates: [News]
}
