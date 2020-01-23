//
//  HttpElements.swift
//  CoinNews
//
//  Created by itsmuffintime on 23.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

public enum HttpHeader: String {
  case authentication = "Authorization"
  case contentType = "Content-Type"
  case acceptType = "Accept"
  case acceptEncoding = "Accept-Encoding"
}

//The content type (JSON)
public enum ContentType: String {
  case json = "application/json"
  case formUrlEncoded = "application/x-www-form-urlencoded"
}

public enum HttpMethod: String {
  case get, post, put, delete
}
