//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Will Saults on 3/22/22.
//

public struct FeedImageViewModel<Image> {
    public let description: String?
    public let location: String?
    public let image: Image?
    public let isLoading: Bool
    public let shouldRetry: Bool

    public var hasLocation: Bool {
        location != nil
    }
}
