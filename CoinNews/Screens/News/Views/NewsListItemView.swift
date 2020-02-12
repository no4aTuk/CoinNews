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
      URLImage(url: self.newsItem.project?.image?.small)
        .frame(width: 30, height: 30)
      VStack(alignment: .leading) {
        //Text(newsItem.project?.symbol ?? "*")
        //Text(newsItem.user ?? "*")
        Text(newsItem.description)
          .font(.system(size: 14, weight: .medium, design: Font.Design.rounded))
          .foregroundColor(Color.gray)
        Button(action: {
          if let url = self.newsItem.links.first {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
          }
        }) {
          Text(newsItem.links.first?.host ?? "show more")
          .foregroundColor(Color.blue)
        }
        Spacer()
        Text(self.newsItem.created_at.toString())
      }
    }
    .buttonStyle(PlainButtonStyle())
  }
}

struct NewsListItemView_Previews: PreviewProvider {
  static var previews: some View {
    NewsListItemView(newsItem: MockResources.news!)
  }
}
