//
//  SampleUtil.swift
//  LiveCore
//
//  Created by Yi Ning on 2/10/20.
//  Copyright © 2020 SeaGroup. All rights reserved.
//

import Foundation

public class ClsB {
    let a: ClsA
    public init(a: ClsA) {
        self.a = a
    }
    
    public func count(characters: String) -> Int {
        debugPrint(String(format:"ClsB.count characters %@", arguments:[characters]))
        return self.a.count(characters: characters)
    }
    
    public func printGenericType <B: GenericType>(a: B) -> Int {
        debugPrint(String(format: "ClsB.printGenericType %@ %d", a.key, a.value))
        return self.a.printGenericType(a: a)
    }
}

public class ClsA {
    public func count(characters: String) -> Int {
        debugPrint(String(format:"ClsA.count characters %@", arguments:[characters]))
        return characters.count
    }
    
    public func printGenericType <A: GenericType>(a: A) -> Int{
        debugPrint(String(format: "ClsA.printGenericType %@ %d", a.key, a.value))
        return a.value
    }
}
