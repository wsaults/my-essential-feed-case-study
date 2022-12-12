//
//  ImageCommentsEndpoint.swift
//  EssentialFeed
//
//  Created by Will Saults on 12/12/22.
//

import Foundation

public enum ImageCommentsEndpoint {
    case get(UUID)

    public func url(baseURL: URL) -> URL {
        switch self {
        case let .get(id):
            return baseURL.appendingPathComponent("/v1/image/\(id)/comments")
        }
    }
}
