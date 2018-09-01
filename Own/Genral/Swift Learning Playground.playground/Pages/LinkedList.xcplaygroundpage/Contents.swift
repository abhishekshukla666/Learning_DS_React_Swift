//: [Previous](@previous)

import Foundation

class Node<T> {
    var element: T
    var next: Node<T>?
    init(element: T, next: Node<T>?) {
        self.element = element
        self.next = next
    }
}

class LinkedList<T> {
    var frontNode: Node<T>?
    
    func add(_ element: T) {
        
    }
    
    func remove(_ element: T) {
        
    }
    
    func printLinkedList(_ node: Node<T>?) {
        var currNode = node
        while currNode != nil {
            print(currNode?.element ?? "-1")
            currNode = currNode?.next
        }
    }
}

let thirdNode = Node(element: 3, next: nil)
let secondNode = Node(element: 2, next: thirdNode)
let firstNode = Node(element: 1, next: secondNode)

var linkedList = LinkedList<Int>()
//linkedList.add(1)
linkedList.printLinkedList(firstNode)

