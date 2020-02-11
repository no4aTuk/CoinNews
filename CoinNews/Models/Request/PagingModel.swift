//
//  PagingModel.swift
//  CoinNews
//
//  Created by itsmuffintime on 30.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

struct PagingModel: RequestModelProtocol {
  let per_page: Int
  let page: Int
  
  func getParams() -> JSONParameters {
    return [
      "per_page": String(per_page),
      "page": String(page)
    ]
  }
}
