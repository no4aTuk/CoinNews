//
//  INewsService.swift
//  CoinNews
//
//  Created by itsmuffintime on 30.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import Combine

protocol INewsService {
  func getNews(category: String, projecType: String, pagingParams: PagingModel) -> AnyPublisher<[News], ApiError>
}
