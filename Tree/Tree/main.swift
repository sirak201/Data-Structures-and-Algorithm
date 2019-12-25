//
//  main.swift
//  Tree
//
//  Created by Sirak on 12/25/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import Foundation








func makeBeverageTree() -> TreeNode<String> {
    let tree = TreeNode("Beverage")
    
    let hot = TreeNode("Hot")
    let cold = TreeNode("Cold")
    
    let tea = TreeNode("tea")
    let coffee = TreeNode("coffee")
    let chocolate = TreeNode("cocoa")
    let blackTea = TreeNode("black")
    let greenTea = TreeNode("green")
    let chaiTea = TreeNode("chai")
    let soda = TreeNode("soda")
    let milk = TreeNode("milk")
    let gingerAle = TreeNode("ginger ale")
    let bitterLemon = TreeNode("bitter lemon")
    tree.add(hot)
    tree.add(cold)
    hot.add(tea)
    hot.add(coffee)
    hot.add(chocolate)
    cold.add(soda)
    cold.add(milk)
    tea.add(blackTea)
    tea.add(greenTea)
    tea.add(chaiTea)
    soda.add(gingerAle)
    soda.add(bitterLemon)
    
    
    return tree
}

func makeNumberTree() -> TreeNode<String> {
    let tree = TreeNode("15")
    
    let seven = TreeNode("7")
    let one = TreeNode("1")
    let twenty = TreeNode("20")
    
     let five = TreeNode("5")
     let oneone = TreeNode("1")
     let zero = TreeNode("0")
    
    let two = TreeNode("2")
    
    
    one.add(oneone)
    one.add(five)
    one.add(zero)
    
    seven.add(two)
    
    tree.add(one)
    tree.add(seven)
    tree.add(twenty)

    return tree
}

//let tree = makeBeverageTree()
//tree.forEachDepthFirst{print($0.value)}




let num = makeNumberTree()
num.printEachLevel([num]) {
    print($0)
}
