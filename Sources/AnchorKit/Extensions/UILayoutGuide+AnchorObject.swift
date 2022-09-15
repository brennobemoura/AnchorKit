//
//  UILayoutGuide+AnchorObject.swift
//
//
//  Created by onnerb on 15/09/22.
//

import UIKit

extension UILayoutGuide: AnchorObject {

    public func anchor(_ reference: AnchorObject) -> Anchor {
        .init(base: self, reference: reference)
    }

    public func anchor(_ reference: AnchorObject, _ builder: (Anchor) -> Void) {
        builder(.init(base: self, reference: reference))
    }
}
