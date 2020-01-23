//
//  ContentView.swift
//  CoinNews
//
//  Created by itsmuffintime on 13.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import SwiftUI

struct CoinsMarketsView: View {
  @ObservedObject var viewModel: CoinsMarketsViewModel
  
  var body: some View {
    NavigationView {
      List(viewModel.coins, id: \.name) { coin in
        HStack {
          CoinsMarketsListItemView(coin: coin)
        }
      }.navigationBarTitle(Text("Coins markets"))
    }
  }
}

struct CoinsMarketsView_Previews: PreviewProvider {
  static var previews: some View {
    CoinsMarketsView(viewModel: CoinsMarketsViewModel(coinsService: CoinsService()))
  }
}
