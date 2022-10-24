//
//  ImageCommentsPresenter.swift
//  EssentialFeed
//
//  Created by Will Saults on 10/24/22.
//

import Foundation

public final class ImageCommentsPresenter {
     public static var title: String {
        NSLocalizedString("IMAGE_COMMENTS_VIEW_TITLE",
              tableName: "ImageComments",
              bundle: Bundle(for: Self.self),
              comment: "Title for the image comments view")
    }
}
