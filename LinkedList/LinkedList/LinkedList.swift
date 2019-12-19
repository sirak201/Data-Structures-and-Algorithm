//
//  LinkedList.swift
//  LinkedList
//
//  Created by Sirak on 12/19/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation


struct LinkedList<Value : Equatable> {
    var head : Node<Value>?
    var tail: Node<Value>?
    
    public init() {}
    
    public var isEmpty : Bool {
        return head == nil
    }

    mutating func push(_ value : Value) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    mutating func appened(_ value : Value) {
        if isEmpty {
            push(value)
        } else {
            tail!.next = Node(value: value)
            tail = tail!.next
        }
    }
    
    public func node(at index : Int) -> Node<Value>? {
        var currentNode  = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        
        return currentNode
    }
    
    @discardableResult
    public mutating func insert(_ value: Value,
                                after node : Node<Value>) -> Node<Value> {
        guard tail !== node else {
            appened(value)
            return tail!
        }
        
        node.next = Node(value: value, next: node.next)
        return node.next!
    }
    
    
}

extension LinkedList : CustomStringConvertible {
    
     public var description: String {
        guard let head = head else {
            return "Emoty List"
        }
        return String(describing: head)
     }
 
 
}
