//
//  ProtocolMultiExts.swift
//  swift-ut-sample
//
//  Created by Yi Ning on 15/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import Foundation

protocol ProtoAExt2: ProtoA {
    func count3(c: String) -> Int
}

protocol ProtoAFinal: ProtoAExt, ProtoAExt2 {}

protocol ProtoC {
    func mergeCount(c: String) -> Int
}
