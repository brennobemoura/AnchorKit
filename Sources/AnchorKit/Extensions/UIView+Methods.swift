//
//  File.swift
//  
//
//  Created by onnerb on 15/09/22.
//

import UIKit

public extension UIView {

    func append(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
    }

    func insert(_ view: UIView, at index: Int) {
        view.translatesAutoresizingMaskIntoConstraints = false
        insertSubview(view, at: index)
    }
}
