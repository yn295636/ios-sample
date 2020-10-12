//
//  SampleUtilTests.swift
//  swift-ut-sampleTests
//
//  Created by Yi Ning on 8/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import XCTest
import Cuckoo
@testable import swift_ut_sample

class SampleUtilTests: SwiftUTSampleTests {
    
    func testCount() {
        let mock = MockClsA()
        stub(mock) { stub in
            when(stub.count(characters: "01234"))
                .then({ (a: String) -> Int in
                    debugPrint("mocked called")
                    return 5
                })
        }
        let b = ClsB(a:mock)
        XCTAssertEqual(b.count(characters: "01234"), 5)
    }
    
    func testPrintGenericType() {
        let mock = MockClsA()
        stub(mock) { stub in
            when(stub.printGenericType(a:any(TypeA.self))).thenReturn(1)
        }
        let b = ClsB(a:mock)
        XCTAssertEqual(b.printGenericType(a:TypeA()), 1)
    }
    
    func testPrintGenericTypeStruct() {
        let mock = MockClsA()
        stub(mock) { stub in
            when(stub.printGenericType(a:any(KeyValue.TypeC.self))).thenReturn(3)
        }
        let b = ClsB(a:mock)
        XCTAssertEqual(b.printGenericType(a:KeyValue.TypeC()), 3)
    }
    
    //MARK: This case has complier error because Cuckoo cannot generate stubs against methods defined in a class extension
    func testCount2InExtension() {
//        let mock = MockClsA()
//        stub(mock) { stub in
//            when(stub.count2(characters: "01234"))
//                .then({ (a: String) -> Int in
//                    debugPrint("mocked called")
//                    return 6
//                })
//        }
//        let b = ClsB(a:mock)
//
//        XCTAssertEqual(b.count2(characters: "01234"), 6)
    }
}
