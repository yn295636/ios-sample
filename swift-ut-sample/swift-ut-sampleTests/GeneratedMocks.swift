// MARK: - Mocks generated from file: swift-ut-sample/ClsA+Count2.swift at 2020-10-08 15:14:29 +0000

//
//  ClsA+Count2.swift
//  swift-ut-sample
//
//  Created by Yi Ning on 8/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import Cuckoo
@testable import swift_ut_sample

import Foundation

// MARK: - Mocks generated from file: swift-ut-sample/ClsB+Count2.swift at 2020-10-08 15:14:29 +0000

//
//  ClsB+Count2.swift
//  swift-ut-sample
//
//  Created by Yi Ning on 8/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import Cuckoo
@testable import swift_ut_sample

import Foundation

// MARK: - Mocks generated from file: swift-ut-sample/GenericTypeProto.swift at 2020-10-08 15:14:29 +0000

//
//  GenericType.swift
//  LiveCore
//
//  Created by Yi Ning on 7/10/20.
//  Copyright © 2020 SeaGroup. All rights reserved.
//

import Cuckoo
@testable import swift_ut_sample

import Foundation


public class MockGenericType: GenericType, Cuckoo.ProtocolMock {
    
    public typealias MocksType = GenericType
    
    public typealias Stubbing = __StubbingProxy_GenericType
    public typealias Verification = __VerificationProxy_GenericType

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GenericType?

    public func enableDefaultImplementation(_ stub: GenericType) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    public var key: String {
        get {
            return cuckoo_manager.getter("key",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.key)
        }
        
    }
    
    
    
    public var value: Int {
        get {
            return cuckoo_manager.getter("value",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.value)
        }
        
    }
    

    

    

	public struct __StubbingProxy_GenericType: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var key: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockGenericType, String> {
	        return .init(manager: cuckoo_manager, name: "key")
	    }
	    
	    
	    var value: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockGenericType, Int> {
	        return .init(manager: cuckoo_manager, name: "value")
	    }
	    
	    
	}

	public struct __VerificationProxy_GenericType: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var key: Cuckoo.VerifyReadOnlyProperty<String> {
	        return .init(manager: cuckoo_manager, name: "key", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var value: Cuckoo.VerifyReadOnlyProperty<Int> {
	        return .init(manager: cuckoo_manager, name: "value", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

public class GenericTypeStub: GenericType {
    
    
    public var key: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
    }
    
    
    public var value: Int {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int).self)
        }
        
    }
    

    

    
}


// MARK: - Mocks generated from file: swift-ut-sample/SampleUtil.swift at 2020-10-08 15:14:29 +0000

//
//  SampleUtil.swift
//  LiveCore
//
//  Created by Yi Ning on 2/10/20.
//  Copyright © 2020 SeaGroup. All rights reserved.
//

import Cuckoo
@testable import swift_ut_sample

import Foundation


public class MockClsB: ClsB, Cuckoo.ClassMock {
    
    public typealias MocksType = ClsB
    
    public typealias Stubbing = __StubbingProxy_ClsB
    public typealias Verification = __VerificationProxy_ClsB

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: ClsB?

    public func enableDefaultImplementation(_ stub: ClsB) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public override func count(characters: String) -> Int {
        
    return cuckoo_manager.call("count(characters: String) -> Int",
            parameters: (characters),
            escapingParameters: (characters),
            superclassCall:
                
                super.count(characters: characters)
                ,
            defaultCall: __defaultImplStub!.count(characters: characters))
        
    }
    
    
    
    public override func printGenericType<B: GenericType>(a: B) -> Int {
        
    return cuckoo_manager.call("printGenericType(a: B) -> Int",
            parameters: (a),
            escapingParameters: (a),
            superclassCall:
                
                super.printGenericType(a: a)
                ,
            defaultCall: __defaultImplStub!.printGenericType(a: a))
        
    }
    

	public struct __StubbingProxy_ClsB: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func count<M1: Cuckoo.Matchable>(characters: M1) -> Cuckoo.ClassStubFunction<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: characters) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockClsB.self, method: "count(characters: String) -> Int", parameterMatchers: matchers))
	    }
	    
	    func printGenericType<M1: Cuckoo.Matchable, B: GenericType>(a: M1) -> Cuckoo.ClassStubFunction<(B), Int> where M1.MatchedType == B {
	        let matchers: [Cuckoo.ParameterMatcher<(B)>] = [wrap(matchable: a) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockClsB.self, method: "printGenericType(a: B) -> Int", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_ClsB: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func count<M1: Cuckoo.Matchable>(characters: M1) -> Cuckoo.__DoNotUse<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: characters) { $0 }]
	        return cuckoo_manager.verify("count(characters: String) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func printGenericType<M1: Cuckoo.Matchable, B: GenericType>(a: M1) -> Cuckoo.__DoNotUse<(B), Int> where M1.MatchedType == B {
	        let matchers: [Cuckoo.ParameterMatcher<(B)>] = [wrap(matchable: a) { $0 }]
	        return cuckoo_manager.verify("printGenericType(a: B) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

public class ClsBStub: ClsB {
    

    

    
    public override func count(characters: String) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
    public override func printGenericType<B: GenericType>(a: B) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
}



public class MockClsA: ClsA, Cuckoo.ClassMock {
    
    public typealias MocksType = ClsA
    
    public typealias Stubbing = __StubbingProxy_ClsA
    public typealias Verification = __VerificationProxy_ClsA

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: ClsA?

    public func enableDefaultImplementation(_ stub: ClsA) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public override func count(characters: String) -> Int {
        
    return cuckoo_manager.call("count(characters: String) -> Int",
            parameters: (characters),
            escapingParameters: (characters),
            superclassCall:
                
                super.count(characters: characters)
                ,
            defaultCall: __defaultImplStub!.count(characters: characters))
        
    }
    
    
    
    public override func printGenericType<A: GenericType>(a: A) -> Int {
        
    return cuckoo_manager.call("printGenericType(a: A) -> Int",
            parameters: (a),
            escapingParameters: (a),
            superclassCall:
                
                super.printGenericType(a: a)
                ,
            defaultCall: __defaultImplStub!.printGenericType(a: a))
        
    }
    

	public struct __StubbingProxy_ClsA: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func count<M1: Cuckoo.Matchable>(characters: M1) -> Cuckoo.ClassStubFunction<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: characters) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockClsA.self, method: "count(characters: String) -> Int", parameterMatchers: matchers))
	    }
	    
	    func printGenericType<M1: Cuckoo.Matchable, A: GenericType>(a: M1) -> Cuckoo.ClassStubFunction<(A), Int> where M1.MatchedType == A {
	        let matchers: [Cuckoo.ParameterMatcher<(A)>] = [wrap(matchable: a) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockClsA.self, method: "printGenericType(a: A) -> Int", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_ClsA: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func count<M1: Cuckoo.Matchable>(characters: M1) -> Cuckoo.__DoNotUse<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: characters) { $0 }]
	        return cuckoo_manager.verify("count(characters: String) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func printGenericType<M1: Cuckoo.Matchable, A: GenericType>(a: M1) -> Cuckoo.__DoNotUse<(A), Int> where M1.MatchedType == A {
	        let matchers: [Cuckoo.ParameterMatcher<(A)>] = [wrap(matchable: a) { $0 }]
	        return cuckoo_manager.verify("printGenericType(a: A) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

public class ClsAStub: ClsA {
    

    

    
    public override func count(characters: String) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
    public override func printGenericType<A: GenericType>(a: A) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
}

