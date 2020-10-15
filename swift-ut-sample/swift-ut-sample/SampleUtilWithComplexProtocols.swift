//
//  SampleUtilWithComplexProtocols.swift
//  swift-ut-sample
//
//  Created by Yi Ning on 15/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import Foundation

class ProtoACplxImpl: ProtoACplx {
    func count(c: String) -> Int {
        debugPrint(String(format: "ProtoACplxImpl.count characters %@", c))
        return c.count
    }
}

extension ProtoACplxImpl {
    func count2(c: String) -> Int {
        debugPrint(String(format: "ProtoACplxImpl.count2 characters %@", c))
        return c.count + 1
    }
}

extension ProtoACplxImpl {
    func count3(c: String) -> Int {
        debugPrint(String(format: "ProtoACplxImpl.count3 characters %@", c))
        return c.count + 2
    }
}

extension ProtoACplxImpl {
    func count4(c: String) -> Int {
        debugPrint(String(format: "ProtoACplxImpl.count4 characters %@", c))
        return c.count + 3
    }
}

//MARK: Class under test
class ProtoBCplxImpl: ProtoBCplx {
    private let a: ProtoACplx
    
    public init(a: ProtoACplx) {
        self.a = a
    }
    
    func mergeCount(c: String) -> Int {
        debugPrint(String(format: "ProtoBCplxImpl.mergeCount characters %@", c))
        return self.a.count(c: c) + self.a.count2(c: c) + self.a.count3(c: c) + self.a.count4(c: c)
    }
}
