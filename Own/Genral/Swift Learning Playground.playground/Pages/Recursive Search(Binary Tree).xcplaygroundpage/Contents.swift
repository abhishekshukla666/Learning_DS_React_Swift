import Foundation
import UIKit


/*
 ------------------------------------------ Recursive Search through Binary Tree ------------------------------------------
 */

//                        10
//                      /    \
//                    5        12
//                  /        /    \
//                4        11      20

class Node {

    let value:Int
    var leftChild: Node?
    var rightChild: Node?

    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

// Right Child
let elevenNode = Node(value: 11, leftChild: nil, rightChild: nil)
let twentyNode = Node(value: 20, leftChild: nil, rightChild: nil)
let twelveNode = Node(value: 12, leftChild: elevenNode, rightChild: twentyNode)

// Left Child
let fourNode = Node(value: 4, leftChild: nil, rightChild: nil)
let fiveNode = Node(value: 5, leftChild: fourNode, rightChild: nil)


// Root Tree
let tenRootNode = Node(value: 10, leftChild: fiveNode, rightChild: twelveNode)


func search(node: Node?, searchValue: Int) -> Bool {
    guard let node = node else {
        return false
    }
    if node.value == searchValue {
        return true
    } else if searchValue < node.value {
        return search(node: node.leftChild, searchValue: searchValue)
    } else if searchValue > node.value {
        return search(node: node.rightChild, searchValue: searchValue)
    }
    return false
}

print(search(node: tenRootNode, searchValue: 0))
