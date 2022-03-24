//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Will Saults on 3/23/22.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>

    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
