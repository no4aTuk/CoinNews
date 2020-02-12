//
//  News.swift
//  CoinNews
//
//  Created by itsmuffintime on 30.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

extension News {
  enum CodingKeys: String, CodingKey {
    case description = "description"
    case category = "category"
    case created_at = "created_at"
    case user = "user"
    case user_title = "user_title"
    case pin = "pin"
    case project = "project"
  }
}

struct News: Codable {
  var description: String
  let category: String
  let created_at: Date
  let user: String
  let user_title: String
  let pin: Bool
  let project: Project?
  
  var links: [URL] = []
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.description = container[.description]
    self.category = container[.category]
    self.created_at = container[.created_at]
    self.user = container[.user]
    self.user_title = container[.user_title]
    self.pin = container[.pin]
    self.project = container[.project]
  }
}

extension News {
  mutating func removeLinkFromDescription() {
    let links = getLinks(text: description)
    links.forEach({ link in
      self.description = description.replacingOccurrences(of: link.absoluteString, with: "")
    })
    self.links = links
  }
  
  private func getLinks(text: String?) -> [URL] {
    guard let text = text else { return [] }
    var urls: [URL] = []
    
    //let pattern = "https://(.)+[^\"]"
    let pattern = "(https|http)://[\\w\\d\\.\\/\\-]+[^\\s]"
    let urlStrings = matches(for: pattern, in: text).compactMap({ URL(string: $0) })
    urls.append(contentsOf: urlStrings)
    return urls
  }
  
//  private func getLinks(text: String?) -> [URL] {
//    guard let text = text, text.count > 0 else {
//      return []
//    }
//    var urls: [URL] = []
//    do {
//      let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue)
//      let matches = detector.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
//      for match in matches {
//        guard let range = Range(match.range, in: text) else { continue }
//        let urlString = text[range]
//        if let url = URL(string: String(urlString)) {
//          urls.append(url)
//          print(url)
//        }
//      }
//    } catch {
//      return []
//    }
//    return urls
//  }
  
  //TODO move to extension/helper
  func matches(for regex: String, in text: String) -> [String] {
    
    do {
      let regex = try NSRegularExpression(pattern: regex)
      let results = regex.matches(in: text,
                                  range: NSRange(text.startIndex..., in: text))
      return results.map {
        guard let range = Range($0.range, in: text) else { return "" }
        return String(text[range])
      }
    } catch let error {
      print("invalid regex: \(error.localizedDescription)")
      return []
    }
  }
}
