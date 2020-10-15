//
//  Protocols.swift
//  swift-ut-sample
//
//  Created by Yi Ning on 9/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import Foundation

protocol ProtoA {
    func count(c: String) -> Int
    func printGenericType<T: GenericType>(t: T) -> Int
}

protocol ProtoB {
    func count(c: String) -> Int
    func printGenericType<T: GenericType>(t: T) -> Int
}
