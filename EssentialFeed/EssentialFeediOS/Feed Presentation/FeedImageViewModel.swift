//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Will Saults on 3/8/22.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool

    var hasLocation: Bool {
        location != nil
    }
}
