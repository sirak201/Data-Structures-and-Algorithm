//
//  main.swift
//  LinkedList
//
//  Created by Sirak on 12/19/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation

let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)
print("Priniting nodes")
node1.next = node2
node2.next = node3
print(node1)

print("")
print("Priniting Linked List")

var linkedList = LinkedList<Int>()
linkedList.push(3)
linkedList.push(2)
linkedList.push(1)
linkedList.appened(0)
//
var middleNode = linkedList.node(at: 1)
linkedList.insert(14, after: middleNode!)


print(linkedList)

print("After Pop")
linkedList.pop()
print(linkedList)


print("After Removelast")
linkedList.removeFromLast()
print(linkedList)

var list2 = linkedList

print(linkedList)
print(list2)

//COW 
print("After appending 8 to list ")
list2.appened(8)

print(linkedList)
print(list2)

print("Reversing Linked List")

list2.printInReverse(list2.head)
let reversedLink = list2.reverseList(list2.head)
print(reversedLink)


