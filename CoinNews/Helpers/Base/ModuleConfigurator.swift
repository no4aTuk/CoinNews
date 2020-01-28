//
//  ModuleAssembler.swift
//  CoinNews
//
//  Created by itsmuffintime on 28.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import SwiftUI

protocol ModuleConfigurator {
  associatedtype Content: View
  
  func configure() -> Content
}
