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

    fileprivate init(
        anchor: Anchor,
        axis: Axis,
        keyPath: KeyPath<Axis, AnchorPoint>
    ) {
        self.anchor = anchor
        self.axis = axis
        self.keyPath = keyPath
    }
}

extension AnchorModifier where Axis == XAxis {

    init(_ anchor: Anchor, _ keyPath: KeyPath<Axis, AnchorPoint>) {
        self.init(
            anchor: anchor,
            axis: .init(),
            keyPath: keyPath
        )
    }
}

extension AnchorModifier where Axis == YAxis {

    init(_ anchor: Anchor, _ keyPath: KeyPath<Axis, AnchorPoint>) {
        self.init(
            anchor: anchor,
            axis: .init(),
            keyPath: keyPath
        )
    }
}

extension AnchorModifier where Axis == Size {

    init(_ anchor: Anchor, _ keyPath: KeyPath<Axis, AnchorPoint>) {
        self.init(
            anchor: anchor,
            axis: .init(),
            keyPath: keyPath
        )
    }
}

extension AnchorModifier where Axis == Edges {

    init(_ anchor: Anchor, _ keyPath: KeyPath<Axis, AnchorPoint>) {
        self.init(
            anchor: anchor,
            axis: .init(),
            keyPath: keyPath
        )
    }
}
