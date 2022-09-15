//
//  XAxis.swift
//  
//
//  Created by onnerb on 15/09/22.
//

import Foundation

public struct XAxis: AnchorAxis {

    public var left: AnchorPoint {
        .left
    }

    public var right: AnchorPoint {
        .right
    }

    public var trailing: AnchorPoint {
        .trailing
    }

    public var leading: AnchorPoint {
        .leading
    }

    public var centerX: AnchorPoint {
        .centerX
    }
}
