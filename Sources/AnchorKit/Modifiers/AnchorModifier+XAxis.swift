//
//  AnchorModifier+XAxis.swift
//
//
//  Created by onnerb on 15/09/22.
//

import UIKit

extension AnchorModifier where Axis == XAxis {

    @discardableResult
    public func equal(
        constant: CGFloat = .zero,
        multiplier: CGFloat = 1,
        priority: UILayoutPriority = .required
    ) -> AnchorMutable<Axis> {
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
    public func lessThanOrEqual(
        constant: CGFloat = .zero,
        multiplier: CGFloat = 1,
        priority: UILayoutPriority = .required
    ) -> AnchorMutable<Axis> {
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
    public func greaterThanOrEqual(
        constant: CGFloat = .zero,
        multiplier: CGFloat = 1,
        priority: UILayoutPriority = .required
    ) -> AnchorMutable<Axis> {
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
