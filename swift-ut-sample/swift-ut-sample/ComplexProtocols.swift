//
//  ComplexProtocols.swift
//  swift-ut-sample
//
//  Created by Yi Ning on 15/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import Foundation
import Foundation

protocol ProtoACplx: class {
    func count(c: String) -> Int
    func count2(c: String) -> Int
    func count3(c: String) -> Int
    func count4(c: String) -> Int
}

protocol ProtoBCplx: class {
    func mergeCount(c: String) -> Int
}
