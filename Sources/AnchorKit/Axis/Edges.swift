//
//  EdgesAxis.swift
//  
//
//  Created by onnerb on 17/09/22.
//

import Foundation
import UIKit

public struct Edges: AnchorAxis {

    public var edges: AnchorPoint {
        .edges
    }
}

func a() {
    UIView().anchor.edges.equal(to: \.edges)
}
