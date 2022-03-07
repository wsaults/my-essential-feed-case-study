//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Will Saults on 3/7/22.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
