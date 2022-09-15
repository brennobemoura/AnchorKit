//
//  AnchorModifier+XAxis.swift
//  
//
//  Created by onnerb on 15/09/22.
//

import UIKit

extension AnchorModifier where Axis == XAxis {

    @discardableResult
    public func equalTo(
        constant: CGFloat = .zero,
        multiplier: CGFloat = .zero,
        priority: UILayoutPriority = .required
    ) -> AnchorMutable {
        .init(
            anchor: anchor,
            relatedBy: .equal,
            firstAttribute: axis[keyPath: self.keyPath],
            secondAttribute: axis[keyPath: self.keyPath],
            constant: constant,
            multiplier: multiplier,
            priority: priority
        )
    }

    @discardableResult
    public func lessThanOrEqualTo(
        constant: CGFloat = .zero,
        multiplier: CGFloat = .zero,
        priority: UILayoutPriority = .required
    ) -> AnchorMutable {
        .init(
            anchor: anchor,
            relatedBy: .lessThanOrEqual,
            firstAttribute: axis[keyPath: self.keyPath],
            secondAttribute: axis[keyPath: self.keyPath],
            constant: constant,
            multiplier: multiplier,
            priority: priority
        )
    }

    @discardableResult
    public func greaterThanOrEqualTo(
        constant: CGFloat = .zero,
        multiplier: CGFloat = .zero,
        priority: UILayoutPriority = .required
    ) -> AnchorMutable {
        .init(
            anchor: anchor,
            relatedBy: .greaterThanOrEqual,
            firstAttribute: axis[keyPath: self.keyPath],
            secondAttribute: axis[keyPath: self.keyPath],
            constant: constant,
            multiplier: multiplier,
            priority: priority
        )
    }
}
