//
//  NSLayoutConstraint+Methods.swift
//
//
//  Created by onnerb on 15/09/22.
//

import UIKit

extension NSLayoutConstraint {

    public static func edges(
        _ subview: UIView,
        as priority: UILayoutPriority = .required
    ) {
        subview.anchor {
            $0.top.equalTo(priority: priority)
            $0.bottom.equalTo(priority: priority)
            $0.leading.equalTo(priority: priority)
            $0.trailing.equalTo(priority: priority)
        }
    }
}
