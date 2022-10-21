//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Will Saults on 3/22/22.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?

    public var hasLocation: Bool {
        location != nil
    }
}
