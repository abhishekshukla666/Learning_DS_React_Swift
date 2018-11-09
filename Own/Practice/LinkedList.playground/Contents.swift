
// Linked List


class Node<T> {
    
    var next: Node<T>?
    var previous: Node<T>?
    var value: T?
    
    init(value: T) {
        self.value = value
    }
}

class LinkedList<T: Equatable> {
    var head: Node<T>?
    
    func append(value: T) {
        
        guard let _ = head?.value else {
            head = Node(value: value)
            return
        }
        
        var current: Node<T>? = head
        
        while current != nil {
            if current?.next == nil {
                let child = Node(value: value)
                current?.next = child
                child.previous = current
                break
            } else {
                current = current?.next
            }
        }
    }
    
    func printLL() {
        var current: Node<T>? = head
        while current != nil {
            print(current?.value)
            current = current?.next
        }
    }
    
    func printLL(at v: T) {
        
        var current: Node<T>? = head
        
        while current != nil {
            guard let value = current?.value else { break }
            if value == v {
                print(current?.previous?.value ?? -1)
                print(current?.next?.value ?? -1)
                break
            } else {
                current = current?.next
            }
        }
    }
}

let list = [1, 3, 5, 7, 9]
let linkedList = LinkedList<Int>()
for n in list {
    linkedList.append(value: n)
}
//linkedList.printLL()
linkedList.printLL(at: 5)

