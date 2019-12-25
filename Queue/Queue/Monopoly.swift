//
//  Monopoly.swift
//  Queue
//
//  Created by Sirak on 12/24/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation

protocol BoardGameManager {
  associatedtype Player
    mutating func nextPlayer() -> Player?
    
}


struct Monopoly <T> : BoardGameManager , Queue{
    
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
    
    mutating func nextPlayer() -> T? {
        return  array.isEmpty ? nil : dequeue()
    }
}
