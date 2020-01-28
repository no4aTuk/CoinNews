//
//  TabBarView.swift
//  CoinNews
//
//  Created by itsmuffintime on 28.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import SwiftUI

struct TabBarView<Content: View>: View {
  let builder: () -> Content
  
  init(@ViewBuilder tabBuilder: @escaping () -> Content) {
    self.builder = tabBuilder
  }
  
  var body: some View {
    return TabView {
      builder()
    }
  }
}

#if DEBUG
struct TabBarView_Previews: PreviewProvider {
  static var previews: some View {
    TabBarView {
      Text("Hello tabs")
    }
  }
}
#endif
