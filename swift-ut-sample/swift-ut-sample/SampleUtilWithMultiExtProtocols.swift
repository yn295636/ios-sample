//
//  SampleUtilWithMultiExtProtocols.swift
//  swift-ut-sample
//
//  Created by Yi Ning on 15/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import Foundation

extension ProtoAImpl: ProtoAExt2 {
    public func count3(c: String) -> Int {
        debugPrint(String(format: "ProtoAImpl(ProtoAExt2).count3 characters %@", c))
        return c.count + 2
    }
}

extension ProtoAImpl: ProtoAFinal {}

//MARK: Class under test
class ProtoCImpl: ProtoC {
    let a: ProtoAFinal
    
    public init(a: ProtoAFinal) {
        self.a = a
    }
    
    public func mergeCount(c: String) -> Int {
        debugPrint(String(format: "ProtoCImpl.mergeCount characters %@", c))
        return self.a.count2(c: c) + self.a.count3(c: c)
    }
}
