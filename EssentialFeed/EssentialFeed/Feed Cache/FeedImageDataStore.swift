//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Will Saults on 3/23/22.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
