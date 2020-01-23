//
//  AppError.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation

enum AppError: Error {
  case controllerNotFound(ctrl: String)
  case cacheFolderNotFound
  
  
  var localizedDescription: String {
    get {
      switch self {
      case .controllerNotFound(let vc):
        return "\(vc) type can not be instantiated!"
      case .cacheFolderNotFound:
        return "cache folder not found"
      default:
        return self.localizedDescription
      }
    }
  }
}
