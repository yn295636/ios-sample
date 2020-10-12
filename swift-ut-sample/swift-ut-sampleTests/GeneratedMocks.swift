// MARK: - Mocks generated from file: swift-ut-sample/ClsA+Count2.swift at 2020-10-12 08:39:44 +0000

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

// MARK: - Mocks generated from file: swift-ut-sample/ClsB+Count2.swift at 2020-10-12 08:39:44 +0000

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

// MARK: - Mocks generated from file: swift-ut-sample/GenericTypeProto.swift at 2020-10-12 08:39:44 +0000

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


// MARK: - Mocks generated from file: swift-ut-sample/ProtocolExts.swift at 2020-10-12 08:39:44 +0000

//
//  ProtocolExts.swift
//  swift-ut-sample
//
//  Created by Yi Ning on 12/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import Cuckoo
@testable import swift_ut_sample

import Foundation


 class MockProtoAExt: ProtoAExt, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProtoAExt
    
     typealias Stubbing = __StubbingProxy_ProtoAExt
     typealias Verification = __VerificationProxy_ProtoAExt

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProtoAExt?

     func enableDefaultImplementation(_ stub: ProtoAExt) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func count2(c: String) -> Int {
        
    return cuckoo_manager.call("count2(c: String) -> Int",
            parameters: (c),
            escapingParameters: (c),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.count2(c: c))
        
    }
    
    
    
     func count(c: String) -> Int {
        
    return cuckoo_manager.call("count(c: String) -> Int",
            parameters: (c),
            escapingParameters: (c),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.count(c: c))
        
    }
    
    
    
     func printGenericType<T: GenericType>(t: T) -> Int {
        
    return cuckoo_manager.call("printGenericType(t: T) -> Int",
            parameters: (t),
            escapingParameters: (t),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.printGenericType(t: t))
        
    }
    

	 struct __StubbingProxy_ProtoAExt: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func count2<M1: Cuckoo.Matchable>(c: M1) -> Cuckoo.ProtocolStubFunction<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: c) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProtoAExt.self, method: "count2(c: String) -> Int", parameterMatchers: matchers))
	    }
	    
	    func count<M1: Cuckoo.Matchable>(c: M1) -> Cuckoo.ProtocolStubFunction<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: c) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProtoAExt.self, method: "count(c: String) -> Int", parameterMatchers: matchers))
	    }
	    
	    func printGenericType<M1: Cuckoo.Matchable, T: GenericType>(t: M1) -> Cuckoo.ProtocolStubFunction<(T), Int> where M1.MatchedType == T {
	        let matchers: [Cuckoo.ParameterMatcher<(T)>] = [wrap(matchable: t) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProtoAExt.self, method: "printGenericType(t: T) -> Int", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProtoAExt: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func count2<M1: Cuckoo.Matchable>(c: M1) -> Cuckoo.__DoNotUse<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: c) { $0 }]
	        return cuckoo_manager.verify("count2(c: String) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func count<M1: Cuckoo.Matchable>(c: M1) -> Cuckoo.__DoNotUse<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: c) { $0 }]
	        return cuckoo_manager.verify("count(c: String) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func printGenericType<M1: Cuckoo.Matchable, T: GenericType>(t: M1) -> Cuckoo.__DoNotUse<(T), Int> where M1.MatchedType == T {
	        let matchers: [Cuckoo.ParameterMatcher<(T)>] = [wrap(matchable: t) { $0 }]
	        return cuckoo_manager.verify("printGenericType(t: T) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProtoAExtStub: ProtoAExt {
    

    

    
     func count2(c: String) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     func count(c: String) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     func printGenericType<T: GenericType>(t: T) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
}



 class MockProtoBExt: ProtoBExt, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProtoBExt
    
     typealias Stubbing = __StubbingProxy_ProtoBExt
     typealias Verification = __VerificationProxy_ProtoBExt

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProtoBExt?

     func enableDefaultImplementation(_ stub: ProtoBExt) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var aX: ProtoAExt {
        get {
            return cuckoo_manager.getter("aX",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.aX)
        }
        
    }
    
    
    
     var a: ProtoA {
        get {
            return cuckoo_manager.getter("a",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.a)
        }
        
    }
    

    

    
    
    
     func count2(c: String) -> Int {
        
    return cuckoo_manager.call("count2(c: String) -> Int",
            parameters: (c),
            escapingParameters: (c),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.count2(c: c))
        
    }
    
    
    
     func count(c: String) -> Int {
        
    return cuckoo_manager.call("count(c: String) -> Int",
            parameters: (c),
            escapingParameters: (c),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.count(c: c))
        
    }
    
    
    
     func printGenericType<T: GenericType>(t: T) -> Int {
        
    return cuckoo_manager.call("printGenericType(t: T) -> Int",
            parameters: (t),
            escapingParameters: (t),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.printGenericType(t: t))
        
    }
    

	 struct __StubbingProxy_ProtoBExt: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var aX: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockProtoBExt, ProtoAExt> {
	        return .init(manager: cuckoo_manager, name: "aX")
	    }
	    
	    
	    var a: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockProtoBExt, ProtoA> {
	        return .init(manager: cuckoo_manager, name: "a")
	    }
	    
	    
	    func count2<M1: Cuckoo.Matchable>(c: M1) -> Cuckoo.ProtocolStubFunction<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: c) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProtoBExt.self, method: "count2(c: String) -> Int", parameterMatchers: matchers))
	    }
	    
	    func count<M1: Cuckoo.Matchable>(c: M1) -> Cuckoo.ProtocolStubFunction<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: c) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProtoBExt.self, method: "count(c: String) -> Int", parameterMatchers: matchers))
	    }
	    
	    func printGenericType<M1: Cuckoo.Matchable, T: GenericType>(t: M1) -> Cuckoo.ProtocolStubFunction<(T), Int> where M1.MatchedType == T {
	        let matchers: [Cuckoo.ParameterMatcher<(T)>] = [wrap(matchable: t) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProtoBExt.self, method: "printGenericType(t: T) -> Int", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProtoBExt: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var aX: Cuckoo.VerifyReadOnlyProperty<ProtoAExt> {
	        return .init(manager: cuckoo_manager, name: "aX", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var a: Cuckoo.VerifyReadOnlyProperty<ProtoA> {
	        return .init(manager: cuckoo_manager, name: "a", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func count2<M1: Cuckoo.Matchable>(c: M1) -> Cuckoo.__DoNotUse<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: c) { $0 }]
	        return cuckoo_manager.verify("count2(c: String) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func count<M1: Cuckoo.Matchable>(c: M1) -> Cuckoo.__DoNotUse<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: c) { $0 }]
	        return cuckoo_manager.verify("count(c: String) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func printGenericType<M1: Cuckoo.Matchable, T: GenericType>(t: M1) -> Cuckoo.__DoNotUse<(T), Int> where M1.MatchedType == T {
	        let matchers: [Cuckoo.ParameterMatcher<(T)>] = [wrap(matchable: t) { $0 }]
	        return cuckoo_manager.verify("printGenericType(t: T) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProtoBExtStub: ProtoBExt {
    
    
     var aX: ProtoAExt {
        get {
            return DefaultValueRegistry.defaultValue(for: (ProtoAExt).self)
        }
        
    }
    
    
     var a: ProtoA {
        get {
            return DefaultValueRegistry.defaultValue(for: (ProtoA).self)
        }
        
    }
    

    

    
     func count2(c: String) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     func count(c: String) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     func printGenericType<T: GenericType>(t: T) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
}


// MARK: - Mocks generated from file: swift-ut-sample/Protocols.swift at 2020-10-12 08:39:44 +0000

//
//  Protocols.swift
//  swift-ut-sample
//
//  Created by Yi Ning on 9/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import Cuckoo
@testable import swift_ut_sample

import Foundation


 class MockProtoA: ProtoA, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProtoA
    
     typealias Stubbing = __StubbingProxy_ProtoA
     typealias Verification = __VerificationProxy_ProtoA

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProtoA?

     func enableDefaultImplementation(_ stub: ProtoA) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func count(c: String) -> Int {
        
    return cuckoo_manager.call("count(c: String) -> Int",
            parameters: (c),
            escapingParameters: (c),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.count(c: c))
        
    }
    
    
    
     func printGenericType<T: GenericType>(t: T) -> Int {
        
    return cuckoo_manager.call("printGenericType(t: T) -> Int",
            parameters: (t),
            escapingParameters: (t),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.printGenericType(t: t))
        
    }
    

	 struct __StubbingProxy_ProtoA: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func count<M1: Cuckoo.Matchable>(c: M1) -> Cuckoo.ProtocolStubFunction<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: c) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProtoA.self, method: "count(c: String) -> Int", parameterMatchers: matchers))
	    }
	    
	    func printGenericType<M1: Cuckoo.Matchable, T: GenericType>(t: M1) -> Cuckoo.ProtocolStubFunction<(T), Int> where M1.MatchedType == T {
	        let matchers: [Cuckoo.ParameterMatcher<(T)>] = [wrap(matchable: t) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProtoA.self, method: "printGenericType(t: T) -> Int", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProtoA: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func count<M1: Cuckoo.Matchable>(c: M1) -> Cuckoo.__DoNotUse<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: c) { $0 }]
	        return cuckoo_manager.verify("count(c: String) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func printGenericType<M1: Cuckoo.Matchable, T: GenericType>(t: M1) -> Cuckoo.__DoNotUse<(T), Int> where M1.MatchedType == T {
	        let matchers: [Cuckoo.ParameterMatcher<(T)>] = [wrap(matchable: t) { $0 }]
	        return cuckoo_manager.verify("printGenericType(t: T) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProtoAStub: ProtoA {
    

    

    
     func count(c: String) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     func printGenericType<T: GenericType>(t: T) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
}



 class MockProtoB: ProtoB, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProtoB
    
     typealias Stubbing = __StubbingProxy_ProtoB
     typealias Verification = __VerificationProxy_ProtoB

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProtoB?

     func enableDefaultImplementation(_ stub: ProtoB) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var a: ProtoA {
        get {
            return cuckoo_manager.getter("a",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.a)
        }
        
    }
    

    

    
    
    
     func count(c: String) -> Int {
        
    return cuckoo_manager.call("count(c: String) -> Int",
            parameters: (c),
            escapingParameters: (c),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.count(c: c))
        
    }
    
    
    
     func printGenericType<T: GenericType>(t: T) -> Int {
        
    return cuckoo_manager.call("printGenericType(t: T) -> Int",
            parameters: (t),
            escapingParameters: (t),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.printGenericType(t: t))
        
    }
    

	 struct __StubbingProxy_ProtoB: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var a: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockProtoB, ProtoA> {
	        return .init(manager: cuckoo_manager, name: "a")
	    }
	    
	    
	    func count<M1: Cuckoo.Matchable>(c: M1) -> Cuckoo.ProtocolStubFunction<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: c) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProtoB.self, method: "count(c: String) -> Int", parameterMatchers: matchers))
	    }
	    
	    func printGenericType<M1: Cuckoo.Matchable, T: GenericType>(t: M1) -> Cuckoo.ProtocolStubFunction<(T), Int> where M1.MatchedType == T {
	        let matchers: [Cuckoo.ParameterMatcher<(T)>] = [wrap(matchable: t) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProtoB.self, method: "printGenericType(t: T) -> Int", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProtoB: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var a: Cuckoo.VerifyReadOnlyProperty<ProtoA> {
	        return .init(manager: cuckoo_manager, name: "a", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func count<M1: Cuckoo.Matchable>(c: M1) -> Cuckoo.__DoNotUse<(String), Int> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: c) { $0 }]
	        return cuckoo_manager.verify("count(c: String) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func printGenericType<M1: Cuckoo.Matchable, T: GenericType>(t: M1) -> Cuckoo.__DoNotUse<(T), Int> where M1.MatchedType == T {
	        let matchers: [Cuckoo.ParameterMatcher<(T)>] = [wrap(matchable: t) { $0 }]
	        return cuckoo_manager.verify("printGenericType(t: T) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProtoBStub: ProtoB {
    
    
     var a: ProtoA {
        get {
            return DefaultValueRegistry.defaultValue(for: (ProtoA).self)
        }
        
    }
    

    

    
     func count(c: String) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     func printGenericType<T: GenericType>(t: T) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
}


// MARK: - Mocks generated from file: swift-ut-sample/SampleUtil.swift at 2020-10-12 08:39:44 +0000

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

