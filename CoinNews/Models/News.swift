//
//  News.swift
//  CoinNews
//
//  Created by itsmuffintime on 30.01.2020.
//  Copyright © 2020 Vonny. All rights reserved.
//

import Foundation

struct News: Codable {
  var description: String?
  let category: String?
  let created_at: Date?
  let user: String?
  let user_title: String?
  let pin: Bool?
  let project: Project?
  
  var link: String?
}

extension News {
  mutating func removeLinkFromDescription() {
    let link = getLink(text: description)
    self.description = description?.replacingOccurrences(of: link, with: "")
    self.link = link
  }
  
  private func getLink(text: String?) -> String {
    guard let text = text else { return "" }
    let pattern = "https://(.)+[^\"]"
    return matches(for: pattern, in: text).first ?? ""
  }
  
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

//{
//  "description": "Dash Core Group’s 2019 Q4 Quarterly Call is live now! Join us to hear the latest with Dash! \r\n\r\nhttps://www.youtube.com/watch?v=BH30bRf7UCk",
//  "category": "general",
//  "created_at": "2020-01-30T16:02:31.782Z",
//  "user": "Michael Seitz",
//  "user_title": "Marketing Manager",
//  "pin": false,
//  "project": {
//    "type": "Coin",
//    "id": "dash",
//    "name": "Dash",
//    "symbol": "dash",
//    "image": {
//      "thumb": "https://assets.coingecko.com/coins/images/19/thumb/dash-logo.png?1548385930",
//      "small": "https://assets.coingecko.com/coins/images/19/small/dash-logo.png?1548385930",
//      "large": "https://assets.coingecko.com/coins/images/19/large/dash-logo.png?1548385930"
//    }
//  }
//}
