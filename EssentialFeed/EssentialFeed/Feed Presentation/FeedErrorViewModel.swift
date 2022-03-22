//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Will Saults on 3/22/22.
//

import Foundation

public struct FeedErrorViewModel {
    public let message: String?

    static var noError: FeedErrorViewModel {
        FeedErrorViewModel(message: nil)
    }

    static func error(message: String) -> FeedErrorViewModel {
        FeedErrorViewModel(message: message)
    }
}
