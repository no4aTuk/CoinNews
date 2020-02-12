//
//  CodableHelper.swift
//  CoinNews
//
//  Created by itsmuffintime on 12.02.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

extension Encodable {
  var dictionary: [String: Any]? {
    guard let data = try? JSONEncoder().encode(self) else { return nil }
    return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
  }
}

extension KeyedDecodingContainer {
  public subscript<T: Decodable>(key: Key) -> T? {
    let result = (try? self.decodeIfPresent(T.self, forKey: key)) ?? nil
    return result
  }
  
  public subscript(key: Key) -> Int {
    return self[key] ?? 0
  }
  
  public subscript(key: Key) -> String {
    return self[key] ?? ""
  }
  
  public subscript(key: Key) -> Bool {
    return self[key] ?? false
  }
  
  public subscript(key: Key) -> Double {
    return self[key] ?? 0.0
  }
  
  //    public subscript(key: Key) -> [Date] {
  //        return self[key, .webReceive] ?? []
  //    }
  
  //    public subscript(key: Key, format: WebServiceDateFormat) -> [Date]? {
  //        let dateString: [String]? = self[key]
  //        return dateString?.compactMap({ DateFormatter.getDate(fromString: $0, format: format) })
  //    }
  //
  //    public subscript(key: Key, format: WebServiceDateFormat) -> [Date] {
  //        let dateString: [String]? = self[key]
  //        return dateString?.compactMap({ DateFormatter.getDate(fromString: $0, format: format) }) ?? []
  //    }
  
  public subscript(key: Key) -> Date? {
    return date(key)
  }
  
  public subscript(key: Key) -> Date {
    return dateValue(key)
  }
  //
  //    public subscript(key: Key, format: WebServiceDateFormat) -> Date {
  //        return dateValue(key, format: format)
  //    }
  //
  //    public subscript(key: Key, format: WebServiceDateFormat) -> Date? {
  //        return date(key, format: format)
  //    }
  //
  private func date(_ key: Key) -> Date? {
    if let result: String = self[key] {
      let date = geckoDateFormatted.date(from: result)
      return date
    }
    return nil
  }
  
  private func dateValue(_ key: Key) -> Date {
    return date(key) ?? Date()
  }
}

