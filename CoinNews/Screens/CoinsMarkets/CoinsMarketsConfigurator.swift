//
//  CoinsMarketsConfigurator.swift
//  CoinNews
//
//  Created by itsmuffintime on 28.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import SwiftUI

public class CoinsMarketsConfigurator: ModuleConfigurator {
  func configure() -> some View {
    let service = CoinsService()
    let viewModel = CoinsMarketsViewModel(coinsService: service)
    
    let listView = CoinsMarketsView(viewModel: viewModel)
      .tabItem {
        Image(systemName: "1.circle")
        Text("First")
      }.tag(0)
    
    return listView
  }
}
