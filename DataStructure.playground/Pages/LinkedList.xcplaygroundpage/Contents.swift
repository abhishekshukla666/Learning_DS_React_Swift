//import Foundation
//
////class Node<T> {
////    var value: T
////    var next: Node<T>?
////
////    init(value: T) {
////        self.value = value
////    }
////}
//
////class LinkedList<T> {
////    var currNode: Node<T>?
////
////    func append(value: T) {
////        guard let _ = currNode else {
////            currNode = Node(value: value)
////            return
////        }
////
////        var lastNode = currNode
////        while (lastNode?.next != nil) {
////            lastNode = lastNode?.next
////        }
////
////        let newNode = Node(value: value)
////        lastNode?.next = newNode
////    }
////
////    func printAllKeys() {
////        var current: Node! = self.currNode
////        print("---------------")
////        while current != nil {
////            print("The item is \(current.value)")
////            current = current.next
////        }
////    }
////}
//
////let first = Node<Int>(value: 1)
////let second = Node<Int>(value: 2)
////let third = Node<Int>(value: 3)
////let fourth = Node<Int>(value: 4)
//
////let ll = LinkedList<Int>()
////ll.append(value: 1)
////ll.append(value: 2)
////ll.append(value: 3)
////ll.printAllKeys()
//
//
