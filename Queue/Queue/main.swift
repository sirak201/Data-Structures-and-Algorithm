//
//  main.swift
//  Queue
//
//  Created by Sirak on 12/22/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation

//var queue = QueueArray<String>()
//queue.enqueue("Dan")
//queue.enqueue("John")
//queue.enqueue("Mike")
//print(queue)
//queue.dequeue()
//print(queue)
//
//print(queue.peek!)

//var doubleLinkedList = DoublyLinkedList<Int>()

//doubleLinkedList.appened(3)
//doubleLinkedList.appened(2)
//doubleLinkedList.appened(1)
//doubleLinkedList.appened(0)
//doubleLinkedList.push(4)
//doubleLinkedList.push(3)
//doubleLinkedList.push(2)
//doubleLinkedList.push(1)
//doubleLinkedList.appened(0)
//
//
//
//print(doubleLinkedList)


var que = QueueStack<String>()
que.enqueue("Jon")
que.enqueue("Mike")
que.enqueue("Sunnit")
que.dequeue()

print(que)



let soulution = Solution()
soulution.isValid("(]")
