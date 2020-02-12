//
//  File.swift
//  CoinNews
//
//  Created by itsmuffintime on 23.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation
import Combine

public class BaseApiService {
  func execute<T: Codable>(router: BaseRouter) -> AnyPublisher<T, ApiError> {
    do {
      let urlRequest = try router.asUrlRequest()
      return ApiClient.shared.execute(urlRequest: urlRequest)
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    } catch {
      return Fail<T, ApiError>(error: ApiError.server(error: error.localizedDescription))
        .eraseToAnyPublisher()
    }
  }
}
