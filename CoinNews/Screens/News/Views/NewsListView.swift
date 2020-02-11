//
//  NewsListView.swift
//  CoinNews
//
//  Created by itsmuffintime on 28.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import SwiftUI
import Combine

struct NewsListView: View {
  @ObservedObject var viewModel: NewsViewModel
  
    var body: some View {
      NavigationView {
        List(viewModel.news, id: \.created_at) { element in
          NewsListItemView(newsItem: element)
        }.navigationBarTitle(Text("News"))
      }
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
      NewsListView(viewModel: NewsViewModel.init(service: NewsService()))
    }
}
