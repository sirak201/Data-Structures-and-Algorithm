//
//  Tree.swift
//  Tree
//
//  Created by Sirak on 12/25/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation

public class TreeNode<T> {
    public var value : T
    public var children : [TreeNode] = []
    
    public init (_ value : T) {
        self.value = value
    }
    
    public func add(_ child : TreeNode) {
        children.append(child)
    }
}


extension TreeNode {
    public func forEachDepthFirst(visit : (TreeNode) -> Void ) {
        visit(self)
        children.forEach {
            $0.forEachDepthFirst(visit: visit)
        }
    }
}
extension TreeNode {
    public func forEachLevelOrder(visit : (TreeNode) -> Void) {
        visit(self)
        var queue = QueueArray<TreeNode>()
        children.forEach {queue.enqueue($0)}
        while let node = queue.dequeue() {
            visit(node)
            node.children.forEach{queue.enqueue($0)}
        }
    }
    
    
    
    public func printEachLevel(_ start : [TreeNode] ,visit : ([TreeNode]) -> Void) {
        visit(start)
        var queue =  [TreeNode]()
        start.forEach {
            s in
            s.children.forEach {
                queue.append($0)
            }
        }
        if !queue.isEmpty {
             printEachLevel(queue, visit: visit)
        }
       
    }
    
    
    
}
extension TreeNode where T : Equatable {
    public func search (_ value : T) -> TreeNode? {
        var result : TreeNode?
        forEachLevelOrder{
            node in
            if node.value == value {
                result = node
            }
        }
         return result
    }
}


extension TreeNode : CustomStringConvertible {
    public var description: String {
        return String(describing: value)
    }
}
