//
//  ProtocolExts.swift
//  swift-ut-sample
//
//  Created by Yi Ning on 12/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import Foundation

protocol ProtoAExt: ProtoA {
    func count2(c: String) -> Int
}

protocol ProtoBExt: ProtoB {
    var aX: ProtoAExt { get }
    func count2(c: String) -> Int
}
