
import Foundation

class Node<T> {

    let value: T
    var next: Node<T>?
    init(value: T) {
        self.value = value
    }
}

class Queue<T> {

    var frontNode: Node<T>?

    func enQueue(value: T) {

        guard frontNode?.value != nil else {
            frontNode = Node(value: value)
            return
        }

        let childToUse = Node(value: value)
        var current = frontNode

        //cycle through the list of items to get to the end.
        while (current?.next != nil) {
            current = current?.next
        }

        //append a new item
        current?.next = childToUse;
    }

    func deQueue() -> T?{

        if frontNode?.value != nil {
            let queueitem = frontNode?.value

//            //use optional binding
//            if let nextitem = frontNode?.next {
//                frontNode = nextitem
//            }
//            else {
//                frontNode = nil
//            }

            return queueitem
        }
        return nil
    }

}

//struct Person {
//    let name: String
//    let userName: String
//}
//
//let firstPerson = Person(name: "Ram", userName: "@ram")
//let secondPerson = Person(name: "Bob", userName: "@bob")
//let thirdPerson = Person(name: "Shamsher", userName: "@shamsher")


let queue = Queue<Int>()
queue.enQueue(value: 1)
queue.enQueue(value: 2)
queue.enQueue(value: 3)
queue.enQueue(value: 4)
queue.enQueue(value: 5)
queue.enQueue(value: 6)

queue.deQueue()
queue.deQueue()
queue.deQueue()
queue.deQueue()
queue.deQueue()
queue.deQueue()
queue.deQueue()


