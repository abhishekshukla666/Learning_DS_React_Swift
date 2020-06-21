
class LLNode<T> {
    var key: T?
    var next: LLNode?
    var previous: LLNode?
}

class LinkedList<T: Comparable> {
    
    private var head = LLNode<T>()
    
    func appendDoubleLL(element key: T) {
        guard head.key != nil else {
            head.key = key
            return
        }
        var current: LLNode<T>? = head
        while current != nil {
            if current?.next == nil {
                let childNode = LLNode<T>()
                childNode.key = key
                childNode.previous = current
                current?.next = childNode
                break
            } else {
                current = current?.next
            }
        }
    }
    
    func appendSingleLL(element key: T) {
        guard head.key != nil else {
            head.key = key
            return
        }
        var current: LLNode<T>? = head
        while current != nil {
            if current?.next == nil {
                let childNode = LLNode<T>()
                childNode.key = key
                current?.next = childNode
                break
            } else {
                current = current?.next
            }
        }
    }
    
    func remove(element key: T) {
        var current: LLNode<T>? = head
        while current != nil, current?.key != nil {
            if ((current?.key = key) != nil) {
                let previous = current?.previous
                let next = current?.next
                previous?.next = next
            } else {
                current = current?.next
            }
        }
    }
    
    func printAllKeys() {
        var current: LLNode<T>? = head
        while current != nil {
            print("Item: \(String(describing: current?.key))")
            current = current?.next
        }
    }
    
    func printFromEnd(position number: T) -> [T] {
        var arrayElements = [T]()
        var current: LLNode<T>? = head
        while current != nil, current?.key != nil {
            arrayElements.append(current?.key ?? -1 as! T)
            current = current?.next
        }
        return arrayElements
    }
    
    func reverseListIfPrevious() {
        var current: LLNode<T>? = head
        var next: LLNode<T>?
        
        while current != nil {
            next = current?.next
            current?.next = current?.previous
            current?.previous = next
//            print(current?.previous?.key, current?.key, current?.next?.key)
            if next == nil { head = current! }
            current = next
//            print(current?.previous?.key, current?.key, current?.next?.key)
            print("\n")
        }
    }
    
    func reverseListIfNoPrevious() {
        var current: LLNode<T>? = head
        var next: LLNode<T>?
        var previous: LLNode<T>?
        
        while current != nil {
            next = current?.next
            current?.next = previous
            previous = current
            head = current!
            current = next
            
        }
    }
    
    func firstNode() -> LLNode<T>? {
        return head
    }
}

func mergeTwoSortedLinkedList(_ ll1: LLNode<Int>?, ll2: LLNode<Int>?) -> LLNode<Int>? {
    var head: LLNode<Int>?
    var firstLL = ll1
    var secondLL = ll2
    var bucketLL: LLNode<Int>?
    if firstLL == nil { return secondLL }
    if secondLL == nil { return firstLL }
    if firstLL != nil && secondLL != nil {
        if (firstLL?.key)! <= (secondLL?.key)! {
            bucketLL = firstLL
            firstLL = firstLL?.next
        } else {
            bucketLL = secondLL
            secondLL = secondLL?.next
        }
    }
    head = bucketLL
    while (firstLL != nil) && (secondLL != nil) {
        if (firstLL?.key)! < (secondLL?.key)! {
            bucketLL?.next = firstLL
            bucketLL = firstLL
            firstLL = bucketLL?.next
        } else {
            bucketLL?.next = secondLL
            bucketLL = secondLL
            secondLL = bucketLL?.next
        }
    }
    
    if firstLL == nil { bucketLL?.next = secondLL }
    if secondLL == nil { bucketLL?.next = firstLL }
    return head
}

//let ll1 = LinkedList<Int>()
//let oddNumbers = [1, 3, 5, 7, 9, 11, 13, 15]
//
//let ll2 = LinkedList<Int>()
//let evenNumbers = [2, 4, 6, 8, 10]
//for number in oddNumbers { ll1.appendDoubleLL(element: number) }
//for number in evenNumbers { ll2.appendDoubleLL(element: number) }
//
//
////ll1.remove(element: 11)
//let sortedList = mergeTwoSortedLinkedList(ll1.firstNode(), ll2: ll2.firstNode())
//var current = sortedList
//while current != nil {
//    print("Sorted Item: \(String(describing: current?.key))")
//    current = current?.next
//}

//print(firstList.printAllKeys())
//firstList.reverseListIfPrevious()
//firstList.reverseListIfNoPrevious()
//print(firstList.printAllKeys())


let ll3 = LinkedList<Int>()
//let numbers = [1, 2, 3, 4]
let numbers = [4, 3, 2, 1]
for number in numbers { ll3.appendSingleLL(element: number) }
//ll3.printAllKeys()
let array = ll3.printFromEnd(position: 3)
print(array[array.count - 1])


