
class LLNode<T> {
    var key: T?
    var next: LLNode?
    var previous: LLNode?
}

class LinkedList<T: Comparable> {
    
    private var head = LLNode<T>()
    
    func append(element key: T) {
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
    
    func reverseListIfPrevious() {
        var current: LLNode<T>? = head
        var next: LLNode<T>?
        
        while current != nil {
            next = current?.next
            current?.next = current?.previous
            current?.previous = next
            
            if next == nil { head = current! }
            current = next
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
    var p = ll1
    var q = ll2
    var s: LLNode<Int>?
    if p == nil { return q }
    if q == nil { return p }
    if p != nil && q != nil {
        if (p?.key)! <= (q?.key)! {
            s = p
            p = p?.next
        } else {
            s = q
            q = q?.next
        }
    }
    head = s
    while (p != nil) && (q != nil) {
        if (p?.key)! < (q?.key)! {
            s?.next = p
            s = p
            p = s?.next
        } else {
            s?.next = q
            s = q
            q = s?.next
        }
    }
    
    if p == nil { s?.next = q }
    if q == nil { s?.next = p }
    return head
}

let ll1 = LinkedList<Int>()
let oddNumbers = [1, 3, 5, 7, 9, 11]

let ll2 = LinkedList<Int>()
let evenNumbers = [2, 4, 6, 8, 10]
for number in oddNumbers { ll1.append(element: number) }
for number in evenNumbers { ll2.append(element: number) }


//ll1.remove(element: 11)
ll1.printAllKeys()
let sortedList = mergeTwoSortedLinkedList(ll1.firstNode(), ll2: ll2.firstNode())
var current = sortedList
while current != nil {
    print("Sorted Item: \(String(describing: current?.key))")
    current = current?.next
}

//print(firstList.printAllKeys())
//firstList.reverseListIfPrevious()
//firstList.reverseListIfNoPrevious()
//print(firstList.printAllKeys())



