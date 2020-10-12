//
//  ProtoBImplTests.swift
//  swift-ut-sampleTests
//
//  Created by Yi Ning on 12/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import XCTest
import Cuckoo
@testable import swift_ut_sample

class ProtoBImplTests: SwiftUTSampleTests {
    func testCount() {
        let mockProtoA = MockProtoA()
        stub(mockProtoA) { stub in
            when(stub.count(c:"abcd")).then({ (c:String) -> Int in
                debugPrint("mock called")
                return 4
            })
        }
        let protoBImpl = ProtoBImpl(a:mockProtoA)
        XCTAssertEqual(4, protoBImpl.count(c: "abcd"))
    }
   
    func testPrintGenericType() {
        let mockProtoA = MockProtoA()
        stub(mockProtoA) { stub in
            when(stub.printGenericType(t: any(TypeA.self))).then { (t: AnyObject) -> Int in
                if let genericType = t as? GenericType {
                    debugPrint(String(format:"mock called with GenericType implement %@", genericType.key))
                    return 1
                }
                return -1
            }
        }
        let protoBImpl = ProtoBImpl(a:mockProtoA)
        XCTAssertEqual(1, protoBImpl.printGenericType(t: TypeA()))
    }
}
