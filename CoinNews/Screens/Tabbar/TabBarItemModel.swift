//
//  TabBarItemModel.swift
//  CoinNews
//
//  Created by itsmuffintime on 28.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import SwiftUI

protocol TabBarItemModel {
  associatedtype Content: View
  var imageName: String {get set}
  var title: String {get set}
  func prepareView() -> Content
}
