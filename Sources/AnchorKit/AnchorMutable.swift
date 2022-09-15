//
//  AnchorMutable.swift
//  
//
//  Created by onnerb on 15/09/22.
//

import UIKit

public final class AnchorMutable {

    private let anchor: Anchor
    private let relatedBy: NSLayoutConstraint.Relation

    private let firstAttribute: AnchorPoint
    private let secondAttribute: AnchorPoint?

    private var constant: CGFloat
    private var multiplier: CGFloat
    private var priority: UILayoutPriority

    init(
        anchor: Anchor,
        relatedBy: NSLayoutConstraint.Relation,
        firstAttribute: AnchorPoint,
        secondAttribute: AnchorPoint?,
        constant: CGFloat,
        multiplier: CGFloat,
        priority: UILayoutPriority
    ) {
        self.anchor = anchor
        self.relatedBy = relatedBy
        self.firstAttribute = firstAttribute
        self.secondAttribute = secondAttribute
        self.constant = constant
        self.multiplier = multiplier
        self.priority = priority
    }

    deinit {
        anchor.build(priority) {
            NSLayoutConstraint(
                item: $0,
                attribute: firstAttribute.attribute,
                relatedBy: relatedBy,
                toItem: $1,
                attribute: secondAttribute?.attribute ?? .notAnAttribute,
                multiplier: multiplier,
                constant: constant
            )
        }
    }
}

extension AnchorMutable {

    @discardableResult
    public func constant(_ constant: CGFloat) -> Self {
        self.constant = constant
        return self
    }

    @discardableResult
    public func priority(_ priority: UILayoutPriority) -> Self {
        self.priority = priority
        return self
    }

    @discardableResult
    public func multiplier(_ multiplier: CGFloat) -> Self {
        self.multiplier = multiplier
        return self
    }
}
