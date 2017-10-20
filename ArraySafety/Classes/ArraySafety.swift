//
//  ArraySafety.swift
//  Pods
//
//  Created by Michael MacDougall on 10/20/17.
//
//

import Foundation

extension Array {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
    
    @discardableResult mutating func append(_ newElement: Element?) -> Bool {
        if let element = newElement {
            append(element)
            return true
        }
        return false
    }
}
