//
//  LinkedList.swift
//  LinkedList
//
//  Created by Sirak on 12/19/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation


struct LinkedList<Value : Equatable>{
    var head : Node<Value>?
    var tail: Node<Value>?
    
    public init() {}
    
    /// Checks Linked List Empty
    public var isEmpty : Bool {
        return head == nil
    }

    mutating func push(_ value : Value) {
        copyNodes()
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    mutating func appened(_ value : Value) {
        copyNodes()
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
        copyNodes()
        guard tail !== node else {
            appened(value)
            return tail!
        }
        
        node.next = Node(value: value, next: node.next)
        return node.next!
    }
    
    @discardableResult
    public mutating func pop() -> Value?{
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
            return head?.value
    }
    
    @discardableResult
    public mutating func removeFromLast() -> Value?{
    
        guard let head = head else {
            return nil
        }
        
        guard head.next != nil else {
            return pop()
        }
        var prev = head
        var current = head
        
        while let next = current.next {
            prev = current
            current = next
        }
        
        prev.next = nil
        tail = prev
        return current.value
    }
    
    
    @discardableResult
    public mutating func remove(after node : Node<Value>) -> Value? {
        defer {
            if node.next === tail {
                tail = node
            }
            node.next = node.next?.next
        }
        return node.next?.value
    }
    
    public  func printInReverse(_ passefNode : Node<Value>?) {
    
        
        while let node = passefNode {
            printInReverse(node.next)
            print(node.value)
            return
        }
       
    }
    
    @discardableResult
    public mutating func reverseList(_ passdNode : Node<Value>?) -> LinkedList {
         copyNodes()
        while let node = passdNode {
            let lastList = reverseList(node.next)
            var link = LinkedList()
            if lastList.head != nil {
                if lastList.head?.next != nil{
                    let previousNode :  Node<Value> = lastList.head!.next!
                                   previousNode.next = Node(value: node.value)
                                   link.head = Node<Value>(value: lastList.head!.value , next: previousNode)
                } else {
                link.head = Node<Value>(value: lastList.head!.value , next: Node(value: node.value))
                }
            } else {
                link.head = Node(value: node.value)
            }
            return link
        }
        return LinkedList()
    }
}

extension LinkedList : CustomStringConvertible {
    
     public var description: String {
        guard let head = head else {
            return "Emoty List"
        }
        return String(describing: head)
     }
    
    fileprivate mutating func copyNodes() {
        guard var oldNode = head else {return}
        head = Node(value: oldNode.value)
        
        var newNode = head
        
        while let nextOldNode = oldNode.next {
            newNode!.next = Node(value: nextOldNode.value)
            newNode = newNode!.next
            
            
            oldNode = nextOldNode
        }
        tail = newNode
    }
 
 
}


extension LinkedList : Collection {
 
    
    func index(after i: LinkedList<Value>.Index) -> Index {
       return Index(node: i.node?.next)
    }
    
    public subscript(position: LinkedList<Value>.Index) -> Value {
        return position.node!.value
    }
    
    var endIndex: LinkedList<Value>.Index {
        return Index(node: tail?.next)
    }
    
    public var startIndex: Index {
        return Index(node: head)
    }
    public struct Index : Comparable {
        public static func < (lhs: LinkedList<Value>.Index, rhs: LinkedList<Value>.Index) -> Bool {
            guard lhs != rhs else {
                return false
            }
            let nodes = sequence(first: lhs.node) {
                $0?.next
            }
            return nodes.contains{$0 === rhs.node}
        }
        
        public static func == (lhs: LinkedList<Value>.Index, rhs: LinkedList<Value>.Index) -> Bool {
            switch (lhs.node , rhs.node) {
            case let (left? , right?):
                return left.next === right.next
            case (nil , nil):
                return true
            default:
                return false
            }
        }
        
        public var node : Node<Value>?
        
        
    }
}
