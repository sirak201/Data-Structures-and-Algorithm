//
//  main.swift
//  BinaryTree
//
//  Created by Sirak on 12/25/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation

var tree: BinaryNode<Int> = {
  let zero = BinaryNode(value: 0)
  let one = BinaryNode(value: 1)
  let five = BinaryNode(value: 5)
  let seven = BinaryNode(value: 7)
  let eight = BinaryNode(value: 8)
 let eleven = BinaryNode(value: 11)
  let nine = BinaryNode(value: 9)
    seven.leftChild = one
    one.leftChild = zero
    one.rightChild = five
    seven.rightChild = nine
    nine.leftChild = eight
    eight.rightChild = eleven
    return seven
}()

print(tree)


//tree.preOrder{
//    print($0.value)
//}

//var x = tree.findHeight()
//var y = tree.height(of: tree)
//print(y)

var sanitize = tree.serialization()
print(sanitize)


