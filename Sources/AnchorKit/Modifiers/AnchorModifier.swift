//
//  AnchorModifier.swift
//
//
//  Created by onnerb on 15/09/22.
//

import Foundation

public struct AnchorModifier<Axis: AnchorAxis> {

    let anchor: Anchor
    let axis: Axis
    let keyPath: KeyPath<Axis, AnchorPoint>

    init(
        anchor: Anchor,
        axis: Axis,
        keyPath: KeyPath<Axis, AnchorPoint>
    ) {
        self.anchor = anchor
        self.axis = axis
        self.keyPath = keyPath
    }

    init(_ anchor: Anchor, _ keyPath: KeyPath<Axis, AnchorPoint>) where Axis == XAxis {
        self.init(
            anchor: anchor,
            axis: .init(),
            keyPath: keyPath
        )
    }

    init(_ anchor: Anchor, _ keyPath: KeyPath<Axis, AnchorPoint>) where Axis == YAxis {
        self.init(
            anchor: anchor,
            axis: .init(),
            keyPath: keyPath
        )
    }

    init(_ anchor: Anchor, _ keyPath: KeyPath<Axis, AnchorPoint>) where Axis == SizeAxis {
        self.init(
            anchor: anchor,
            axis: .init(),
            keyPath: keyPath
        )
    }
}
