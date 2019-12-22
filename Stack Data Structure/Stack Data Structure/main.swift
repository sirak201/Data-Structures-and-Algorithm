//
//  main.swift
//  Stack Data Structure
//
//  Created by Sirak on 12/22/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation

print("Hello, World!")

var stack = Stack<Int>()
stack.push(3)
stack.push(2)
stack.push(1)

print(stack)

if let poppedElement = stack.pop() {
    assert(1 == poppedElement)
    print("Popped:  \(poppedElement)")
}

var stack2 : Stack = [1 , 2, 3, 4]
print(stack2)


//Challenge 2
let str = "(()"
print(str.equalBracket())

var linkedList = LinkedList<Int>()
linkedList.appened(3)
linkedList.appened(2)
linkedList.appened(1)

print(linkedList)
linkedList.reverseListNoRecursion()


