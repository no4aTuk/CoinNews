//
//  ApiClient.swift
//  CoinNews
//
//  Created by itsmuffintime on 23.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import Combine

let geckoDateFormatted = GeckoDateFormatter()

public class ApiClient {
  
  public static let shared = ApiClient()
  private init() {}
  
  private let decoder: JSONDecoder = {
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .formatted(geckoDateFormatted)
    return decoder
  }()
  private let queue = DispatchQueue(label: "api_queue", qos: .userInitiated, attributes: .concurrent)
  
  public func execute<T: Codable>(urlRequest: URLRequest) -> AnyPublisher<T, ApiError> {
    URLSession.shared.dataTaskPublisher(for: urlRequest)
      .subscribe(on: queue)
      //.receive(on: DispatchQueue.main)
      .map { $0.0 }
      .decode(type: T.self, decoder: decoder)
      .mapError { error in
        switch error {
        case is URLError: return ApiError.invalidBaseUrl
        default:          return ApiError.server(error: error.localizedDescription)
        }
    }.eraseToAnyPublisher()
  }
}
