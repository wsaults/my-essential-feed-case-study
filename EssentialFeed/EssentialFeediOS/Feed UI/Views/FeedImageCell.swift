//
//  FeedImageCell.swift
//  EssentialFeediOS
//
//  Created by Will Saults on 3/6/22.
//

import UIKit

public class FeedImageCell: UITableViewCell {
    @IBOutlet private(set) public var locationContainer: UIView!
    @IBOutlet private(set) public var locationLabel: UILabel!
    @IBOutlet private(set) public var feedImageContainer: UIView!
    @IBOutlet private(set) public var feedImageView: UIImageView!
    @IBOutlet private(set) public var feedImageRetryButton: UIButton!
    @IBOutlet private(set) public var descriptionLabel: UILabel!

    var onRetry: (() -> Void)?

    @IBAction private func retryButtonTapped() {
        onRetry?()
    }
}
