//
//  Challenge3.swift
//  SCCSolutions
//
//  Created by Daniel Burkard on 16.07.19.
//  Copyright © 2019 Daniel Burkard. All rights reserved.
//

import Foundation

struct Challenge3 {
    // alternative solution from paul, might be slower with very long inputs
    func hasSameMembers_paul(_ inputA: String,_ inputB: String) -> Bool {
        return inputA.sorted() == inputB.sorted()
    }
    
    func hasSameMembers<T>(_ inputA: T,_ inputB: T) -> Bool where T: RangeReplaceableCollection, T.Element: Equatable {
        // if the inputs count is different, they can't have the same members
        guard inputA.count == inputB.count else { return false }
        // create a mutable copy of inputB
        var inputB = inputB
        for element in inputA {
            // for every element from inputA, find it in inputB
            guard let index = inputB.firstIndex(of: element) else {
                // if it can't be found, the inputs can't have the same members
                return false
            }
            // otherwise remove it from inputB
            inputB.remove(at: index)
        }
        
        // no differences found
        return true
    }
}
