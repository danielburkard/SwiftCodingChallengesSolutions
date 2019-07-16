//
//  Challenge1Tests.swift
//  SCCSolutionsTests
//
//  Created by Daniel Burkard on 16.07.19.
//  Copyright © 2019 Daniel Burkard. All rights reserved.
//

import XCTest
@testable import SCCSolutions

class Challenge1Tests: XCTestCase {
    var challenge: Challenge1!
    let longString = String(repeating: "A", count: 999999)

    override func setUp() {
        super.setUp()
        challenge = Challenge1()
    }
    
    func testChallenge1() {
        XCTAssertTrue(challenge.hasOnlyUniqueMembers("No duplicates"))
        XCTAssertTrue(challenge.hasOnlyUniqueMembers("abcdefghijklmnopqrstuvwxyz"))
        XCTAssertTrue(challenge.hasOnlyUniqueMembers("AaBbCc"))
        XCTAssertFalse(challenge.hasOnlyUniqueMembers("Hello, world"))
    }

    func testPerformance_alt() {
        self.measure {
            XCTAssertFalse(self.challenge.hasOnlyUniqueMembers_paul(longString))
        }
    }
    
    func testPerformance() {
        self.measure {
            XCTAssertFalse(self.challenge.hasOnlyUniqueMembers(longString))
        }
    }
}
