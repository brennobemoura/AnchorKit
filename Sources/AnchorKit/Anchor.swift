//
//  Anchor.swift
//
//
//  Created by onnerb on 15/09/22.
//

import UIKit

public class Anchor {
    private let base: AnchorObject
    private let reference: AnchorObject?
    private var constraints: [NSLayoutConstraint]

    init(base: AnchorObject, reference: AnchorObject?) {
        self.base = base
        self.reference = reference
        self.constraints = []
    }

    deinit {
        NSLayoutConstraint.activate(constraints)
    }
}

extension Anchor {

    func build(
        _ priority: UILayoutPriority,
        _ builder: (AnchorObject, AnchorObject?) -> [NSLayoutConstraint]
    ) {
        for constraint in builder(base, reference) {
            constraint.priority = priority
            constraints.append(constraint)
        }
    }

    func build(
        _ priority: UILayoutPriority,
        _ builder: (AnchorObject, AnchorObject?) -> NSLayoutConstraint
    ) {
        build(priority, { [builder($0, $1)] })
    }
}

extension Anchor {

    public var left: AnchorModifier<XAxis> {
        .init(self, \.left)
    }

    public var right: AnchorModifier<XAxis> {
        .init(self, \.right)
    }

    public var leading: AnchorModifier<XAxis> {
        .init(self, \.leading)
    }

    public var trailing: AnchorModifier<XAxis> {
        .init(self, \.trailing)
    }

    public var centerX: AnchorModifier<XAxis> {
        .init(self, \.centerX)
    }
}

extension Anchor {

    public var top: AnchorModifier<YAxis> {
        .init(self, \.top)
    }

    public var bottom: AnchorModifier<YAxis> {
        .init(self, \.bottom)
    }

    public var centerY: AnchorModifier<YAxis> {
        .init(self, \.centerY)
    }
}

extension Anchor {

    public var height: AnchorModifier<Size> {
        .init(self, \.height)
    }

    public var width: AnchorModifier<Size> {
        .init(self, \.width)
    }
}

extension Anchor {

    public var edges: AnchorModifier<Edges> {
        .init(self, \.edges)
    }
}
