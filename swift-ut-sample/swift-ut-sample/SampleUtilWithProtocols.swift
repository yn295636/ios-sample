//
//  SampleUtilWithProtocols.swift
//  swift-ut-sample
//
//  Created by Yi Ning on 9/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import Foundation

class ProtoAImpl: ProtoA {
    public func count(c: String) -> Int {
        debugPrint(String(format:"ProtoAImpl.count characters %@", c))
        return c.count
    }
    
    public func printGenericType <A: GenericType>(t: A) -> Int{
        debugPrint(String(format: "ProtoAImpl.printGenericType %@ %d", t.key, t.value))
        return t.value
    }
}


//MARK: Class under test
class ProtoBImpl: ProtoB {
    let a: ProtoA
    
    public init(a: ProtoA) {
        self.a = a
    }
    
    public func count(c: String) -> Int {
        debugPrint(String(format:"ProtoBImpl.count characters %@", c))
        return self.a.count(c: c)
    }
    
    public func printGenericType <B: GenericType>(t: B) -> Int{
        debugPrint(String(format: "ProtoBImpl.printGenericType %@ %d", t.key, t.value))
        return self.a.printGenericType(t: t)
    }
}
