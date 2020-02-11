//
//  NewsRouter.swift
//  CoinNews
//
//  Created by itsmuffintime on 30.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

enum NewsRouter: BaseRouter {
  case news(category: String, projecType: String, paging: PagingModel)
  
  public var path: String {
    switch self {
    case .news:
      return "status_updates"
    }
  }
  
  public var method: HttpMethod {
    switch self {
    case .news:
      return .get
    }
  }
  
  public var parameters: JSONParameters {
    switch self {
    case .news(let category, let project, let paging):
      var parameter: JSONParameters = [
        "category": category,
        "project_type": project,
      ]
      parameter.merge(paging.getParams()) { (value1, value2) -> String in
        return value1 ?? (value2 ?? "")
      }
      return parameter
    }
  }
}
