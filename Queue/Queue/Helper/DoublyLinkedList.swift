//
//  DoublyLinkedList.swift
//  Queue
//
//  Created by Sirak on 12/24/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation

struct DoublyLinkedList<Value : Comparable>  {
    var head : DoubleNode<Value>?
    var tail : DoubleNode<Value>?
    
    var isEmpty : Bool {
        return head == nil ? true : false
    }
    
    mutating func appened(_ val : Value){
        if isEmpty {
            push(val)
        } else {
            
            let newNode = DoubleNode(val)
            tail?.next = newNode
            newNode.previos = DoubleNode(tail!.val)
            tail = newNode
        }

    }
    
    mutating func push(_ val : Value) {
        if isEmpty {
            head = DoubleNode(val)
            tail = head!
        } else {
            let oldHead = head
            let newHead = DoubleNode(val: val, next: oldHead, previos: nil)
            head = newHead
            oldHead?.previos = DoubleNode(val)
        }
    }

    
    
    
    
    
}



extension DoublyLinkedList : CustomStringConvertible {
    
     public var description: String {
        guard let head = head else {
            return "Emoty List"
        }
        return String(describing: head)
     }
    
    fileprivate mutating func copyNodes() {
        guard var oldNode = head else {return}
        head = DoubleNode(oldNode.val)
        
        var newNode = head
        
        while let nextOldNode = oldNode.next {
            newNode!.next = DoubleNode(nextOldNode.val)
            newNode = newNode!.next
            
            
            oldNode = nextOldNode
        }
        tail = newNode
    }
 
 
}
