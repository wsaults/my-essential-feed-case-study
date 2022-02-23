//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Will Saults on 2/23/22.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
