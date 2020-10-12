//
//  ProtoBImplSubWithProtoBExtTests.swift
//  swift-ut-sampleTests
//
//  Created by Yi Ning on 12/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import XCTest
import Cuckoo
@testable import swift_ut_sample

class ProtoBImplSubWithProtoBExtTests: SwiftUTSampleTests {
    func testCount() {
        let mockProtoAImpl = MockProtoA()
        let mockProtoAExtImpl = MockProtoAExt()
        stub(mockProtoAImpl) { stub in
            when(stub.count(c: "abcd")).then { (c: String) -> Int in
                debugPrint("mocked called")
                return 4
            }
        }
        let protoBImplSubWithProtoBExt = ProtoBImplSubWithProtoBExt(a: mockProtoAImpl, aX: mockProtoAExtImpl)
        XCTAssertEqual(4, protoBImplSubWithProtoBExt.count(c: "abcd"))
    }
    
    func testCount2() {
        let mockProtoAImpl = MockProtoA()
        let mockProtoAExtImpl = MockProtoAExt()
        stub(mockProtoAExtImpl) { stub in
            when(stub.count2(c: "abcde")).then { (c: String) -> Int in
                debugPrint("mocked called")
                return 6
            }
        }
        let protoBImplSubWithProtoBExt = ProtoBImplSubWithProtoBExt(a: mockProtoAImpl, aX: mockProtoAExtImpl)
        XCTAssertEqual(6, protoBImplSubWithProtoBExt.count2(c: "abcde"))
    }
    
}
