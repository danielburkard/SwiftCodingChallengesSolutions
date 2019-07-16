//
//  Challenge2.swift
//  SCCSolutions
//
//  Created by Daniel Burkard on 14.07.19.
//  Copyright © 2019 Daniel Burkard. All rights reserved.
//

import Foundation

struct Challenge2 {    
    func isAnnagram(_ string: String) -> Bool {
        // reverse the string and compare both with lowercased
        return String(string.reversed()).lowercased() == string.lowercased()
    }
}
