//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Will Saults on 2/12/22.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
