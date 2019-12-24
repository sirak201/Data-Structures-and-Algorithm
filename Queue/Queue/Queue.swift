//
//  Queue.swift
//  Queue
//
//  Created by Sirak on 12/22/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation


public protocol Queue {
    associatedtype Element
    mutating func enqueue(_ element : Element) -> Bool
    mutating func dequeue () -> Element?
    var isEmpty : Bool { get }
    var peek : Element? { get }
}


public struct QueueArray<T> : Queue {
    @discardableResult
    public mutating func enqueue(_ element: T) -> Bool {
        array.append(element)
        return true
    }
    
    @discardableResult
    public mutating func dequeue() -> T? {
        return isEmpty ? nil : array.removeFirst()
    }
    
    
    private var array : [T] = []
    public init () {}
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    
    public var peek: T? {
        return array.first
    }

}


extension QueueArray : CustomStringConvertible {
    public var description: String {
        return String(describing: array)
    }
}
