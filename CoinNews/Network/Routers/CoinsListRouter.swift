//
//  CoinsListRouter.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation
import Alamofire

public enum CoinsListRouter: BaseApiRouter {
    case getCoins
    
    //MARK: - HttpMethod
    public var method: HTTPMethod {
        switch self {
        case .getCoins:
            return .get
        }
    }
    
    //MARK: - Path
    public var path: String {
        switch self {
        case .getCoins:
            return "coins"
        }
    }
    
    //MARK: - Parameters
    public var parameters: Parameters? {
        switch self {
        case .getCoins:
            //A dictionary of the key (From the constants file) and its value is returned
            return [:]
        }
    }
}

