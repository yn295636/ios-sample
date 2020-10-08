//
//  ClsA+Count2.swift
//  swift-ut-sample
//
//  Created by Yi Ning on 8/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import Foundation

extension ClsA {
    public func count2(characters: String) -> Int {
        debugPrint(String(format:"ClsA.count2 characters %@", arguments:[characters]))
        return characters.count + 1
    }
}
