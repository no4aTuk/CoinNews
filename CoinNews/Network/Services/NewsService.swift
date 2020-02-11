//
//  NewsService.swift
//  CoinNews
//
//  Created by itsmuffintime on 30.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import Combine

final class NewsService: BaseApiService, INewsService {
  func getNews(category: String, projecType: String,
               pagingParams: PagingModel) -> AnyPublisher<[News], ApiError> {
    let router = NewsRouter.news(category: category, projecType: projecType, paging: pagingParams)
    let result: AnyPublisher<NewsResponseModel, ApiError> = execute(router: router)
    
    return result
    .map({ (element: NewsResponseModel) -> [News] in
      element.status_updates
    })
    .eraseToAnyPublisher()
  }
}
