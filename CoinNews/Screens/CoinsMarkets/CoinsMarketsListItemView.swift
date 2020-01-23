//
//  CoinsMarketsListView.swift
//  CoinNews
//
//  Created by itsmuffintime on 16.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import SwiftUI

struct CoinsMarketsListItemView: View {
  var coin: Coin
  
  var body: some View {
    HStack {
      //Image("coins_tab")
      URLImage(url: coin.image)
        .frame(width: 50, height: 50)
      VStack(alignment: .leading) {
        Text(coin.name)
        Text(String(coin.current_price))
      }
    }
  }
}

struct CoinsMarketsListView_Previews: PreviewProvider {
  static var previews: some View {
    CoinsMarketsListItemView(coin: MockResources.coinMarket!)
  }
}
