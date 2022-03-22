//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Will Saults on 3/21/22.
//

struct FeedErrorViewModel {
    let message: String?

    static var noError: FeedErrorViewModel {
        FeedErrorViewModel(message: nil)
    }

    static func error(message: String) -> FeedErrorViewModel {
        FeedErrorViewModel(message: message)
    }
}
