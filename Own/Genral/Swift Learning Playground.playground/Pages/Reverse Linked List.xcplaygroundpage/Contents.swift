import Foundation

/*
 ------------------------------------------ Reverse Linked List ------------------------------------------
 */

// 1->2->3->nil

class Node {
    
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node? ) {
        self.value = value
        self.next = next
    }
}

let thirdNode = Node(value: 3, next: nil)
let secondNode = Node(value: 2, next: thirdNode)
let firstNode = Node(value: 1, next: secondNode)

func printLinkedList( node: Node?) {
    print("Starting out list of nodes")
    
    var currentNode = node
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
}

printLinkedList(node: firstNode)

/*
 ------------------------------------------ Reverse Linked List ------------------------------------------
 */

// 1->2->3->nil

// nil<-1->2->3->nil
// nil<-1<-2->3->nil
// nil<-1<-2<-3

// nil<-1<-2<-3
// nil->1->2->3

func reverseLinkedList(node: Node?) -> Node?{
    
    var currentNode = node
    var prevNode: Node?
    var nextNode: Node?
    
    while currentNode != nil {
        
        nextNode = currentNode?.next
        currentNode?.next = prevNode
        
        print("Prev: \(prevNode?.value ?? -1), Current: \(currentNode?.value ?? -1), Next: \(nextNode?.value ?? -1)")
        
        prevNode = currentNode
        currentNode = nextNode
    }
    return prevNode
}

let reverseList = reverseLinkedList(node: firstNode)
printLinkedList(node: reverseList)
