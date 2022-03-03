//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Will Saults on 2/12/22.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
