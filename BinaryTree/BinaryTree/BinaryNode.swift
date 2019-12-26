//
//  BinaryNode.swift
//  BinaryTree
//
//  Created by Sirak on 12/25/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation


public class BinaryNode<T> {
    public var value : T
    public var leftChild : BinaryNode?
    public var rightChild : BinaryNode?
    
    
    
    public init(value : T) {
        self.value = value
    }
    
    
    public func  inorder(visit : (BinaryNode) -> Void) {
        leftChild?.inorder(visit: visit)
        rightChild?.inorder(visit: visit)
        visit(self)
    }
    
    public func  preOrder(visit : (BinaryNode?) -> Void) {
        visit(self)
        leftChild?.preOrder(visit: visit)
        visit(nil)
        rightChild?.preOrder(visit: visit)
//        visit(nil)
    }
    
    public func  postOrder(visit : (BinaryNode) -> Void) {
         leftChild?.postOrder(visit: visit)
         rightChild?.postOrder(visit: visit)
         visit(self)
     }
    
    public func findHeight() -> Int {

        var left = 0
        var right = 0
        leftChild?.postOrder {
            _ in
            left += 1
        }
        
        rightChild?.postOrder{
            _ in
            right += 1
        }
        
        if right > left {
            return right
        } else {
           return  left
        }
    }
    
    public  func height(of node : BinaryNode<T>?) -> Int {
        
        guard node != nil else {
            return -1
        }
        
        return 1 + max(height(of: node!.leftChild), height(of: node!.rightChild))
    }
    
    func serialization() -> [T?] {
        var arr = [T?]()
        preOrder{
            arr.append($0?.value)
        }
        
        
        return arr
    }

    
}







extension BinaryNode: CustomStringConvertible {
    
  public var description: String {
    return diagram(for: self)
  }
  private func diagram(for node: BinaryNode?,
                       _ top: String = "",
                       _ root: String = "",
                       _ bottom: String = "") -> String{
    guard let node = node else {
      return root + "nil\n"
    }
    if node.leftChild == nil && node.rightChild == nil {
        return root + "\(node.value)\n"
   }
        return diagram(for: node.rightChild,
        top + " ", top + "┌──", top + "│ ")
            + root + "\(node.value)\n"
            + diagram(for: node.leftChild,
            bottom + "│ ", bottom + "└──", bottom + " ")
    }
    
}
