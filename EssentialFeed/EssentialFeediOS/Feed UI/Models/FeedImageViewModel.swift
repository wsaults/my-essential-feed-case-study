//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Will Saults on 3/8/22.
//

import Foundation
import UIKit
import EssentialFeed

final class FeedImageViewModel {
    typealias Observer<T> = (T) -> Void

    private var task: FeedImageDataLoaderTask?
    private var model: FeedImage
    private let imageLoader: FeedImageDataLoader

    init(model: FeedImage, imageLoader: FeedImageDataLoader) {
        self.model = model
        self.imageLoader = imageLoader
    }

    var description: String? {
        model.description
    }

    var location: String? {
        model.location
    }

    var hasLocation: Bool {
        location != nil
    }

    var onImageLoad: Observer<UIImage>?
    var onImageLoadingStateChange: Observer<Bool>?
    var onShouldRetryImageLoadStateChange: Observer<Bool>?

    func loadImageData() {
        onImageLoadingStateChange?(true)
        onShouldRetryImageLoadStateChange?(false)
        task = imageLoader.loadImageData(from: model.url) { [weak self] result in
            self?.handle(result)
        }
    }

    private func handle(_ result: FeedImageDataLoader.Result) {
        if let image = (try? result.get()).flatMap(UIImage.init) {
            onImageLoad?(image)
        } else {
            onShouldRetryImageLoadStateChange?(true)
        }
        onImageLoadingStateChange?(false)
    }

    func cancelImageDataLoad() {
        task?.cancel()
        task = nil
    }
}
