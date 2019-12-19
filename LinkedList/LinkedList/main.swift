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

var middleNode = linkedList.node(at: 1)
linkedList.insert(14, after: middleNode!)

print(linkedList)


