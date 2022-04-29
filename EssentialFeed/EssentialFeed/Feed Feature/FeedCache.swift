//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Will Saults on 4/29/22.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
