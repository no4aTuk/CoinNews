//
//  Post.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation

public struct Post: Codable {
    public let id: Int
    public let title: String
    public let body: String
    public let userId: Int
}
