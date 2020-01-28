//
//  NewsConfigurator.swift
//  CoinNews
//
//  Created by itsmuffintime on 28.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import SwiftUI

public class NewsConfigurator: ModuleConfigurator {
  func configure() -> some View {
    let newsViewModel = NewsViewModel()
    let newsView = NewsListView(viewModel: newsViewModel)
      .tabItem {
        Image(systemName: "2.circle")
        Text("Second")
    }.tag(1)
    
    return newsView
  }
}
