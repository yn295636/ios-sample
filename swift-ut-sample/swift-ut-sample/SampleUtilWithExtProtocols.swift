//
//  SampleUtilWithExtProtocols.swift
//  swift-ut-sample
//
//  Created by Yi Ning on 12/10/20.
//  Copyright © 2020 booyah. All rights reserved.
//

import Foundation

extension ProtoAImpl: ProtoAExt {
    public func count2(c: String) -> Int {
        debugPrint(String(format:"ProtoAImpl(ProtoAExt).count2 characters %@", c))
        return c.count + 1
    }
}

class ProtoBImplSubWithProtoBExt: ProtoBImpl,ProtoBExt {
    var aX: ProtoAExt
    
    public init(a: ProtoA, aX: ProtoAExt) {
        self.aX = aX
        super.init(a:a)
    }
    
    public func count2(c: String) -> Int {
        debugPrint(String(format:"ProtoBImplSubWithProtoBExt.count2 characters %@", c))
        return self.aX.count2(c: c)
    }
}
