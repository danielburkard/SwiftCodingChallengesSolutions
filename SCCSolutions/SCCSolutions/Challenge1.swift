//
//  Challenge1.swift
//  SCCSolutions
//
//  Created by Daniel Burkard on 13.07.19.
//  Copyright © 2019 Daniel Burkard. All rights reserved.
//

import Foundation

public struct Challenge1 {
    public func hasOnlyUniqueMembers<T>(_ input: T) -> Bool where T: Collection, T.Element: Hashable {
        var seen: Set<T.Element> = []
        // iterate over the input
        for element in input {
            // if we already saw that element, its not unique
            if seen.contains(element) { return false }
            // if not, add to seen characters
            seen.insert(element)
        }
        // no characters was seen twice
        return true
    }
    
    // alternative solution from paul, might be slower with very long inputs
    public func hasOnlyUniqueMembers_paul(_ string: String) -> Bool {
        return Set(string).count == string.count
    }
}
