////: [Previous](@previous)
//
//import Foundation
//
//class Node<T> {
//    var value: T
//    var children = [Node<T>]()
//    weak var parent: Node<T>?
//    
//    init(value: T) {
//        self.value = value
//    }
//    
//    func add(child: Node<T>) {
//        children.append(child)
//        child.parent = self
//    }
//}
//
///*
// - First Test Case
// */
////let beverages = Node<String>(value: "Beverages")
////let hot = Node<String>(value: "Hot")
////let cold = Node<String>(value: "Cold")
////
////beverages.add(child: hot)
////beverages.add(child: cold)
//
////print(beverages)
//
///*
// - Second Test Case
// */
//let numbers = Node<Int>(value: 10)
//let one = Node<Int>(value: 1)
//let two = Node<Int>(value: 2)
//numbers.add(child: one)
//numbers.add(child: two)
//
//print(numbers)
//
//extension Node: CustomStringConvertible {
//    // 2
//    var description: String {
//        // 3
//        var text = "\(value)"
//        
//        // 4
//        if !children.isEmpty {
//            text += " {" + children.map { $0.description }.joined(separator: ", ") + "} "
//        }
//        return text
//    }
//}
