//
//  UIView+AnchorObject.swift
//
//
//  Created by onnerb on 15/09/22.
//

import UIKit

extension UIView: AnchorObject {

    public var anchor: Anchor {
        .init(base: self, reference: superview)
    }

    public func anchor(_ reference: AnchorObject) -> Anchor {
        .init(base: self, reference: reference)
    }

    public func anchor(_ builder: (Anchor) -> Void) {
        builder(.init(base: self, reference: superview))
    }

    public func anchor(_ reference: AnchorObject, _ builder: (Anchor) -> Void) {
        builder(.init(base: self, reference: reference))
    }
}
