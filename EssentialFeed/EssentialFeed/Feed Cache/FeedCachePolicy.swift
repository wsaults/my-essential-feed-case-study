//
//  FeedCachePolicy.swift
//  EssentialFeed
//
//  Created by Will Saults on 2/26/22.
//

import Foundation

enum FeedCachePolicy {
    private static let calendar = Calendar(identifier: .gregorian)

    private static var maxCachedAgeInDays: Int {
        7
    }

    static func validate(_ timestamp: Date, against date: Date) -> Bool {
        guard let maxCacheAge = calendar.date(byAdding: .day, value: maxCachedAgeInDays, to: timestamp) else {
            return false
        }
        return date < maxCacheAge
    }
}
