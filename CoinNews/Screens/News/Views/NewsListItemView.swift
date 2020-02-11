//
//  NewsListItemView.swift
//  CoinNews
//
//  Created by itsmuffintime on 30.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import SwiftUI

struct NewsListItemView: View {
  var newsItem: News
  
  var body: some View {
    //var frame: CGRect = .zero
    HStack(alignment: .top) {
      URLImage(url: self.newsItem.project!.image!.small)
        .frame(width: 30, height: 30)
      VStack(alignment: .leading) {
        //Text(newsItem.project!.symbol)
        //Text(newsItem.user)
        //Text(newsItem.description!)
        CNwsTextView(text: self.newsItem.description!)
          
//          .background(Rectangle().fill())
//          .font(.body)
//          .foregroundColor(.gray)
        Text(self.newsItem.created_at!.toString())
      }.frame(width: 100, height: 100, alignment: .center)
    }
  }
}

struct NewsListItemView_Previews: PreviewProvider {
  static var previews: some View {
    NewsListItemView(newsItem: MockResources.news!)
  }
}
