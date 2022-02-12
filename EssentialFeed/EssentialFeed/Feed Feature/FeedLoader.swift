//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Will Saults on 2/12/22.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
