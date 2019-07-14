//
//  Tester.swift
//  SCCSolutions
//
//  Created by Daniel Burkard on 13.07.19.
//  Copyright © 2019 Daniel Burkard. All rights reserved.
//

import Foundation

func testEqual<T>(name: String, block: (() -> T), result: T) where T: Equatable {
    let start = Date()
    print("🎬 \(name): Starting test ...")
    let blockResult = block()
    if result == blockResult {
        print("✅ \(name) run successfully.")
    } else {
        print("❌ \(name) failed.")
        assertionFailure()
    }
    let formatter = DateComponentsFormatter()
    formatter.allowedUnits = [.second, .minute]
    formatter.unitsStyle = .full
    let durationString = formatter.string(from: start, to: Date())!
    print("🏁 \(name): Finished in \(durationString).")
}
