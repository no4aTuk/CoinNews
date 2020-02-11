//
//  NewsViewModel.swift
//  CoinNews
//
//  Created by itsmuffintime on 28.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

public class NewsViewModel: BaseViewModel {
  
  @Published var news: [News] = []
  let service: INewsService
  
  init(service: INewsService) {
    self.service = service
    super.init()
    loadNews()
  }
  
  func loadNews() {
    //TODO params
    let category = ""
    let projectType = ""
    let pagingParams = PagingModel(per_page: 100, page: 0)
    service.getNews(category: category, projecType: projectType, pagingParams: pagingParams)
      .sink(receiveCompletion: { completion in
        if case .failure(let error) = completion {
          self.error = error
        }
      }, receiveValue: { stories in
        //TODO refactor
        self.news = stories.map({ news in
          var news = news
          news.removeLinkFromDescription()
          return news
        })
        self.error = nil
      })
      .store(in: &subscriptions)
  }
}
