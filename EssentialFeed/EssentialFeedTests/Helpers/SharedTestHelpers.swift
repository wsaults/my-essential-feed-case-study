//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Will Saults on 2/25/22.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    URL(string: "http://any-url.com")!
}
