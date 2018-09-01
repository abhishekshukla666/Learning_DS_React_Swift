//: [Previous](@previous)

import Foundation

class Node<T> {
    var value: T
    weak var parent: Node?
    var children: [Node] = []
    
    init(value: T) {
        self.value = value
    }
    
    func add(child: Node) {
        self.parent = self
        self.children.append(child)
    }
}

let beverages = Node(value: 10)
let hotBeverages = Node(value: 5)
let coldBeverages = Node(value: 11)

beverages.add(child: hotBeverages)
beverages.add(child: coldBeverages)

extension Node: CustomStringConvertible {
    // 2
    var description: String {
        // 3
        var text = "\(value)"
        
        // 4
        if !children.isEmpty {
            text += " {" + children.map { $0.description }.joined(separator: ", ") + "} "
        }
        return text
    }
}

extension Node where T: Equatable {
    // 1
    func search(value: T) -> Node? {
        // 2
        if value == self.value {
            return self
        }
        // 3
        for child in children {
            if let found = child.search(value: value) {
                return found
            }
        }
        // 4
        return nil
    }
}

if let hot = beverages.search(value: 10) {
    print(hot)
}

