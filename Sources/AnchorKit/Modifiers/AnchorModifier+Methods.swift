//
//  AnchorModifier+Methods.swift
//
//
//  Created by onnerb on 15/09/22.
//

import UIKit

extension AnchorModifier {

    @discardableResult
    public func equal(
        to keyPath: KeyPath<Axis, AnchorPoint>,
        constant: CGFloat = .zero,
        multiplier: CGFloat = 1,
        priority: UILayoutPriority = .required
    ) -> AnchorMutable<Axis> {
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
    public func lessThanOrEqual(
        to keyPath: KeyPath<Axis, AnchorPoint>,
        constant: CGFloat = .zero,
        multiplier: CGFloat = 1,
        priority: UILayoutPriority = .required
    ) -> AnchorMutable<Axis> {
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
    public func greaterThanOrEqual(
        to keyPath: KeyPath<Axis, AnchorPoint>,
        constant: CGFloat = .zero,
        multiplier: CGFloat = 1,
        priority: UILayoutPriority = .required
    ) -> AnchorMutable<Axis> {
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
