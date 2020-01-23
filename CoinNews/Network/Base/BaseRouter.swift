//
//  BaseEndpoint.swift
//  CoinNews
//
//  Created by itsmuffintime on 23.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

public protocol BaseRouter {
  var path: String {get}
  var method: HttpMethod {get}
  var parameters: JSONParameters {get}
}

extension BaseRouter {
  func asUrlRequest() throws -> URLRequest {
    guard let url = URL(string: path) else {
      throw ApiError.invalidBaseUrl
    }
    
    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = self.method.rawValue
    urlRequest.setValue(ContentType.json.rawValue,
                        forHTTPHeaderField: HttpHeader.acceptType.rawValue)
    //Moved inside parameters encoder
    //request.setValue(ContentType.json.rawValue,
      //forHTTPHeaderField: HttpHeader.contentType.rawValue)
    
    var encoding: ParameterEncoding {
      switch method {
      case .get:  return .url
      default:    return .json
      }
    }
    
    return encoding.encode(request: urlRequest, parameters: parameters)
  }
}
