//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Will Saults on 3/23/22.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyData() -> Data {
    Data("any data".utf8)
}

func anyURL() -> URL {
    URL(string: "http://a-url.com")!
}
