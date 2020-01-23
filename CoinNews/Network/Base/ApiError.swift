//
//  ApiError.swift
//  CoinNews
//
//  Created by itsmuffintime on 23.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

public enum ApiError: Error {
  case invalidBaseUrl
  case notFound
  case forbidden
  case internalServerError
  case unautorized
  case conflict
  case server(error: String)
  
  public var localizedDescription: String {
    switch self {
    case .invalidBaseUrl:      return "Invalid Base URL"
    case .notFound:            return "Not found"
    case .forbidden:           return "Forbidden"
    case .internalServerError: return "Internal server error"
    case .unautorized:         return "Unauthorized"
    case .conflict:            return "Conflict"
    case .server(let error):   return error
    }
  }
}
