//
//  Challenge2Tests.swift
//  SCCSolutionsTests
//
//  Created by Daniel Burkard on 16.07.19.
//  Copyright © 2019 Daniel Burkard. All rights reserved.
//

import XCTest
@testable import SCCSolutions

class Challenge2Tests: XCTestCase {
    var challenge: Challenge2!
    
    override func setUp() {
        super.setUp()
        challenge = Challenge2()
    }
    
    func testChallenge2() {
        XCTAssertTrue(challenge.isAnnagram("rotator"))
        XCTAssertTrue(challenge.isAnnagram("Rats live on no evil star"))
        XCTAssertFalse(challenge.isAnnagram("Never odd or even"))
        XCTAssertFalse(challenge.isAnnagram("Hello, world"))
    }
}
