//
//  ParametersEncoding.swift
//  CoinNews
//
//  Created by itsmuffintime on 23.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

public typealias JSONParameters = [String:String?]

public enum ParameterEncoding {
  case url
  case json
  
  func encode(request: URLRequest, parameters: JSONParameters) -> URLRequest {
    var request = request
    let components = NSURLComponents()
    components.queryItems = parameters.map({
      URLQueryItem(name: $0.key, value: $0.value)
    })
    switch self {
    case .url:
      request.setValue(ContentType.json.rawValue,
                          forHTTPHeaderField: HttpHeader.contentType.rawValue)
      let queryString = components.percentEncodedQuery ?? ""
      //request.url?.appendPathComponent("?\(queryString ?? "")")
      //request.url?.appendPathComponent("?\(queryString)", isDirectory: false)
      let stringUrl = "\((request.url?.absoluteString ?? ""))?\(queryString)"
      request.url = URL(string: stringUrl)
      let a = 1 + 2
    case .json:
      request.setValue(ContentType.formUrlEncoded.rawValue,
                       forHTTPHeaderField: HttpHeader.contentType.rawValue)
      request.httpBody = components.percentEncodedQuery?.data(using: String.Encoding.utf8)
    }
    return request
  }
}
