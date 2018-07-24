import Foundation

/*
 ------------------------------------------ Stacks ------------------------------------------
 */

class Node<T> {
    
    let value: T
    var next: Node<T>?
    init(value: T) {
        self.value = value
    }
}

class Stack<T> {
    
    var top: Node<T>?
    
    func push(value: T) {
        print(value)
        print(top?.value ?? -1)
        
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
        print(top?.next?.value ?? -1)
        
        print("")
    }
    
    func pop () -> T? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
}

struct Person {
    let name: String
    let username: String
}

let firstUser = Person(name: "Me", username: "@me")
let secondUser = Person(name: "You", username: "@you")

let userStack = Stack<Person>()
userStack.push(value: firstUser)
userStack.push(value: secondUser)

let firstTopUser = userStack.pop()
print(firstTopUser?.name ?? "")

var stack = Stack<Int>()
stack.push(value: 1)
stack.push(value: 2)
stack.push(value: 3)

let firstTop = stack.pop()
let secondTop = stack.pop()
let thirdTop = stack.pop()

