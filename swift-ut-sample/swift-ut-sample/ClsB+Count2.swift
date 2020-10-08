//
//  ClsB+Count2.swift
//  swift-ut-sample
//
//  Created by Yi Ning on 8/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import Foundation

extension ClsB {
    public func count2(characters: String) -> Int {
        debugPrint(String(format:"ClsB.count2 characters %@", arguments:[characters]))
        return self.a.count2(characters: characters)
    }
}
