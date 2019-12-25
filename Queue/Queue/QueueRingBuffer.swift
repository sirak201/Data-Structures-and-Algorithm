//
//  QueueRingBuffer.swift
//  Queue
//
//  Created by Sirak on 12/24/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation

public struct QueueStack<T> : Queue {
    private var leftStack : [T] = []
    private var rightStack : [T] = []
    
    
    
    public var isEmpty: Bool {
        leftStack.isEmpty && rightStack.isEmpty
    }
    @discardableResult
    public mutating func enqueue(_ element: T) -> Bool {
        rightStack.append(element)
        return true
    }
    @discardableResult
    public mutating func dequeue() -> T? {
        if leftStack.isEmpty {
            leftStack = rightStack.reversed()
            rightStack.removeAll()
        }
        
        return leftStack.popLast()
    }
    
    public var peek: T? {
        return nil
    }
    
    
}


extension QueueStack: CustomStringConvertible {
  public var description: String {
        let printList = leftStack.reversed() + rightStack
        return String(describing: printList)
  }
}




struct CustomArrayQueue <T>{
    var storgae = [T]()
    
    
    public mutating func deque(){
        if !storgae.isEmpty {
            storgae.removeLast()
        }
    }
    
    public mutating func equance(_ val : T) {
        storgae.append(val)
    }
}

struct CustomStackQueue <T>{
    var storgae = Stack<T>()
    
    
    public mutating func deque(){
        storgae.pop()
    }
    
    public mutating func equance(_ val : T) {
        storgae.push(val)
    }
}
