//
//  AnchorPoint.swift
//
//
//  Created by onnerb on 15/09/22.
//

import UIKit

public enum AnchorPoint {
    case top
    case bottom

    case leading
    case trailing
    case left
    case right

    case centerX
    case centerY

    case height
    case width
}

extension AnchorPoint {

    var attribute: NSLayoutConstraint.Attribute {
        switch self {
        case .top:
            return .top
        case .bottom:
            return .bottom
        case .leading:
            return .leading
        case .trailing:
            return .trailing
        case .left:
            return .left
        case .right:
            return .right
        case .centerX:
            return .centerX
        case .centerY:
            return .centerY
        case .height:
            return .height
        case .width:
            return .width
        }
    }
}
