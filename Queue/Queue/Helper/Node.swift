//
//  LinkedList.swift
//  LinkedList
//
//  Created by Sirak on 12/19/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation

public class Node< Value : Equatable & Comparable> {
    public var value : Value
    public var next : Node?
    
    public init (value : Value , next : Node? = nil) {
        self.value = value
        self.next = next
    }
    
   
   
}

extension Node : CustomStringConvertible {
    public var description: String {
        guard let next = next  else {
            return"\(value)"
        }
        
        return "\(value) -> " + String(describing: next) + " "
    }
    
    
   }
