//
//  BaseVM.swift
//  CoinNews
//
//  Created by itsmuffintime on 23.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import Combine

public class BaseViewModel: ObservableObject {
  @Published var error: ApiError? = nil
  
  var subscriptions = Set<AnyCancellable>()
}
