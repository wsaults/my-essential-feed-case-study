//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Will Saults on 2/12/22.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
