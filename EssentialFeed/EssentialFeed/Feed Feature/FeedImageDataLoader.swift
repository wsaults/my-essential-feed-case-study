//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Will Saults on 3/7/22.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
