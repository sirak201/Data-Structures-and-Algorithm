//
//  Stack.swift
//  Stack Data Structure
//
//  Created by Sirak on 12/22/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation

public struct Stack <Element> {
    
    private var storeage : [Element] = []
    
    public init () {}
    public init(_ elements : [Element]) {
        storeage = elements
    }
    
    public mutating func push (_ element : Element) {
        storeage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        return storeage.popLast()
    }
    
    public func peek() -> Element? {
        return storeage.last
    }
    
    public var isEmpty : Bool {
        return peek() == nil
    }
}

extension Stack : CustomStringConvertible {
    public var description: String {
        let topDivider = "---top----\n"
        let bottomDivider = "\n--------"
        
        let stackElemenr = storeage
            .map{"\($0)"}
            .reversed()
            .joined(separator: "\n")
            return topDivider + stackElemenr + bottomDivider
    }
}

extension Stack : ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storeage = elements
    }
}


extension String {
    public func equalBracket() -> Bool {
        
        var stack = Stack<Character>()
        
        for i in self {
            if i == "(" {
                stack.push(i)
            } else if i == ")" {
                stack.pop()
            }
        }
        
        if stack.isEmpty {
            return true
        } else {
            return false
        }
        
        
    }
}
