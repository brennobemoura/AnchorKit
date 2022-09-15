//
//  AnchorModifier+Methods.swift
//
//
//  Created by onnerb on 15/09/22.
//

import UIKit

extension AnchorModifier {

    @discardableResult
    public func equalTo(
        _ keyPath: KeyPath<Axis, AnchorPoint>,
        constant: CGFloat = .zero,
        multiplier: CGFloat = .zero,
        priority: UILayoutPriority = .required
    ) -> AnchorMutable {
        .init(
            anchor: anchor,
            relatedBy: .equal,
            firstAttribute: axis[keyPath: self.keyPath],
            secondAttribute: axis[keyPath: keyPath],
            constant: constant,
            multiplier: multiplier,
            priority: priority
        )
    }

    @discardableResult
    public func lessThanOrEqualTo(
        _ keyPath: KeyPath<Axis, AnchorPoint>,
        constant: CGFloat = .zero,
        multiplier: CGFloat = .zero,
        priority: UILayoutPriority = .required
    ) -> AnchorMutable {
        .init(
            anchor: anchor,
            relatedBy: .lessThanOrEqual,
            firstAttribute: axis[keyPath: self.keyPath],
            secondAttribute: axis[keyPath: keyPath],
            constant: constant,
            multiplier: multiplier,
            priority: priority
        )
    }

    @discardableResult
    public func greaterThanOrEqualTo(
        _ keyPath: KeyPath<Axis, AnchorPoint>,
        constant: CGFloat = .zero,
        multiplier: CGFloat = .zero,
        priority: UILayoutPriority = .required
    ) -> AnchorMutable {
        .init(
            anchor: anchor,
            relatedBy: .greaterThanOrEqual,
            firstAttribute: axis[keyPath: self.keyPath],
            secondAttribute: axis[keyPath: keyPath],
            constant: constant,
            multiplier: multiplier,
            priority: priority
        )
    }
}
