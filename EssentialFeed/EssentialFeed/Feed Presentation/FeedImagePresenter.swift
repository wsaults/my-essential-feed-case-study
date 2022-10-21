//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Will Saults on 3/22/22.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
