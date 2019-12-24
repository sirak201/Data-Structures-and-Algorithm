//
//  DoubleNode.swift
//  Queue
//
//  Created by Sirak on 12/24/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation

class DoubleNode <Value>{
    var val : Value
    var next : DoubleNode?
    var previos : DoubleNode?
    
    init(_ val : Value) {
        self.val = val
    }
    
    init(val : Value , next : DoubleNode? , previos : DoubleNode? ) {
        self.val = val
        self.next = next
        self.previos = previos
    }
}
