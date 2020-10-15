//
//  ProtoBCplxImplTests.swift
//  swift-ut-sampleTests
//
//  Created by Yi Ning on 15/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import XCTest
import Cuckoo
@testable import swift_ut_sample

class ProtoBCplxImplTests: SwiftUTSampleTests {

    func testMergeCount() {
        let mockProtoACplx = MockProtoACplx()
        stub(mockProtoACplx) { stub in
            when(stub.count(c: "abcd")).then { (c: String) -> Int in
                debugPrint("mocked method count called")
                return 4
            }
            when(stub.count2(c: "abcd")).then { (c: String) -> Int in
                debugPrint("mocked method count2 called")
                return 5
            }
            when(stub.count3(c: "abcd")).then { (c: String) -> Int in
                debugPrint("mocked method count3 called")
                return 6
            }
            when(stub.count4(c: "abcd")).then { (c: String) -> Int in
                debugPrint("mocked method count4 called")
                return 7
            }
        }
        let b = ProtoBCplxImpl(a: mockProtoACplx)
        XCTAssertEqual(22, b.mergeCount(c: "abcd"))
    }
}
