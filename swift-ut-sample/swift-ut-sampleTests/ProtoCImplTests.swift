//
//  ProtoCImplTests.swift
//  swift-ut-sampleTests
//
//  Created by Yi Ning on 15/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import XCTest
import Cuckoo
@testable import swift_ut_sample

class ProtoCImplTests: SwiftUTSampleTests {

    func testMergeCount() {
        let mockProtoAFinal = MockProtoAFinal()
        stub(mockProtoAFinal) { stub in
            when(stub.count2(c: "abcd")).then { (c: String) -> Int in
                debugPrint("mocked method count2 called")
                return 5
            }
            when(stub.count3(c: "abcd")).then { (c: String) -> Int in
                debugPrint("mocked method count3 called")
                return 6
            }
        }
        let c = ProtoCImpl(a:mockProtoAFinal)
        XCTAssertEqual(11, c.mergeCount(c: "abcd"))
    }

}
