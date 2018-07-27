//: Playground - noun: a place where people can play

import UIKit

class LLNode<T> {
    var key: T?
    var next: LLNode?
    var previous: LLNode?
}

class LinkedList<T: Comparable> {
   
    // new instance
    private var head = LLNode<T>()
    
    func append(element key: T) {
        
        guard head.key != nil else {
            head.key = key
            return
        }
        
        var current: LLNode<T>? = head
        
        while current != nil {
            if current?.next == nil {
                let childToUse = LLNode<T>()
                childToUse.key = key
                childToUse.previous = current
                current?.next = childToUse
                break
            } else {
                current = current?.next
            }
        }
    }
    
    func remove(element key: T) {
        var current: LLNode<T>? = head
        while current != nil, current?.key != nil {
            if key == current?.key {
                let previous = current?.previous
                let next = current?.next
                previous?.next = next
                return
            }
            current = current?.next
        }
    }
    
    func printAllKeys() {
        
        var current: LLNode<T>? = head
        while current != nil {
            print("link item is: \(String(describing: current?.key!))")
            current = current?.next
        }
    }
    
    func reverse() {
        
        var current: LLNode<T>? = head
        var next: LLNode<T>? = nil

        while current != nil {

            next = current?.next
            current?.next = current?.previous
            current?.previous = next

            if next == nil {
                head = current!
            }
            current = next
        }
    }
    
    func firstNode() -> LLNode<T>? {
        let current: LLNode? = head
        return current
    }
}


let array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let ll1 = LinkedList<Int>()
for i in array1 {
    ll1.append(element: i)
}

let array2 = [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
let ll2 = LinkedList<Int>()
for i in array2 {
    ll2.append(element: i)
}

ll1.remove(element: 4)

ll1.printAllKeys()
//ll1.reverse()
//ll2.printAllKeys()
//ll1.printAllKeys()

func mergeLLNode(element p: LLNode<Int>?, q: LLNode<Int>?, s: LLNode<Int>?) -> LLNode<Int>? {
    var head: LLNode<Int>? = nil
    var p = p
    var q = q
    var s = s
    if (p == nil) { return q }
    if (q == nil) { return p }
    if (p != nil && q != nil) {
        if ((p?.key)! <= (q?.key)!) {
            s = p
            p = p?.next
        } else {
            s = q
            q = q?.next
        }
    }
    head = s
    while (p != nil && q != nil) {
        if ((p?.key)! < (q?.key)!) {
            s?.next = p
            s = p
            p = s?.next
        } else {
            s?.next = q
            s = q
            q = s?.next
        }
    }
    if (p == nil) { s?.next = q }
    if (q == nil) { s?.next = p }
    return head
}

var sortingNode = mergeLLNode(element: ll1.firstNode(), q: ll2.firstNode(), s: nil)

while sortingNode != nil {
    print(sortingNode?.key ?? -1)
    sortingNode = sortingNode?.next
}
