//
//  PostService.swift
//  CoinNews
//
//  Created by Vonny on 13/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation
import RxSwift

public struct PostsService {
    public func getPosts(userId: Int) -> Observable<[Post]> {
        return ApiClient.shared.request(PostsRouter.getPosts(userId: userId))
    }
}
