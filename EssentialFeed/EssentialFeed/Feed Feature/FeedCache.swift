//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Will Saults on 4/29/22.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
