//
//  FeedUIIntegrationTests+Localization.swift
//  EssentialFeediOSTests
//
//  Created by Will Saults on 3/12/22.
//

import Foundation
import XCTest
import EssentialFeed

extension FeedUIIntegrationTests {
    
    private class DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }
    
    var loadError: String {
        LoadResourcePresenter<Any, DummyView>.loadError
    }
    
    var feedTitle: String {
        FeedPresenter.title
    }
}
