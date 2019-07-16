//
//  Challenge3Tests.swift
//  SCCSolutionsTests
//
//  Created by Daniel Burkard on 16.07.19.
//  Copyright © 2019 Daniel Burkard. All rights reserved.
//

import XCTest
@testable import SCCSolutions

class Challenge3Tests: XCTestCase {
    var challenge: Challenge3!
    let longStringA = String(repeating: "A", count: 99999)
    let longStringB = String(repeating: "B", count: 99999)

    override func setUp() {
        super.setUp()
        challenge = Challenge3()
    }
    
    func testChallenge3() {
        XCTAssertTrue(challenge.hasSameMembers("abca","abca"))
        XCTAssertTrue(challenge.hasSameMembers("abc","cba"))
        XCTAssertTrue(challenge.hasSameMembers("a1 b2","b1 a2"))
        XCTAssertFalse(challenge.hasSameMembers("abc","abca"))
        XCTAssertFalse(challenge.hasSameMembers("abc","Abc"))
        XCTAssertFalse(challenge.hasSameMembers("abc","cbAa"))
    }
    
    func testPerformance_alt() {
        self.measure {
            XCTAssertFalse(self.challenge.hasSameMembers_paul(longStringA, longStringB))
        }
    }
    
    func testPerformance() {
        self.measure {
            XCTAssertFalse(self.challenge.hasSameMembers(longStringA, longStringB))
        }
    }
}
