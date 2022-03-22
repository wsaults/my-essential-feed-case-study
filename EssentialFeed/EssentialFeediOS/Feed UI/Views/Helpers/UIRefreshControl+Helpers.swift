//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Will Saults on 3/21/22.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
