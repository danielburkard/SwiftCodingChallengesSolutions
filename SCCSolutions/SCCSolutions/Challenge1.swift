//
//  Challenge1.swift
//  SCCSolutions
//
//  Created by Daniel Burkard on 13.07.19.
//  Copyright © 2019 Daniel Burkard. All rights reserved.
//

import Foundation
struct Challenge1 {
    func hasOnlyUniqueMembers(_ string: String) -> Bool {
        var seen: Set<Character> = []
        // iterate over the string
        for char in string {
            // if we already saw that character, its not unique
            if seen.contains(char) { return false }
            // if not, add to seen characters
            seen.insert(char)
        }
        // no characters was seen twice
        return true
    }
    
    // alternative solution, might be slower with very long strings
    func hasOnlyUniqueMembers_alt(_ string: String) -> Bool {
        return Set(string).count == string.count
    }
    
    static func test() {
        let challenge = Challenge1()
        testEqual(name: "Challenge 1 Test 1", block: { challenge.hasOnlyUniqueMembers("No duplicates") }, result: true)
        testEqual(name: "Challenge 1 Test 2", block: { challenge.hasOnlyUniqueMembers("abcdefghijklmnopqrstuvwxyz") }, result: true)
        testEqual(name: "Challenge 1 Test 3", block: { challenge.hasOnlyUniqueMembers("AaBbCc") }, result: true)
        testEqual(name: "Challenge 1 Test 4", block: { challenge.hasOnlyUniqueMembers("Hello, world") }, result: false)
        
        let longString = String(repeating: "A", count: 9999999)
        testEqual(name: "Challenge 1 Test 5 A", block: { challenge.hasOnlyUniqueMembers(longString) }, result: false)
        testEqual(name: "Challenge 1 Test 5 B", block: { challenge.hasOnlyUniqueMembers_alt(longString) }, result: false)
    }
}
