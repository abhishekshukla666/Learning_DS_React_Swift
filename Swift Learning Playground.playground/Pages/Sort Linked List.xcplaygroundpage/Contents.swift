

class Node {
    
    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

func sortLinkedList(node: Node?) {
    
    var listArray = [Int]()
    var currentNode = node
    while currentNode != nil {
        listArray.append(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
    listArray.sort()
    for i in listArray {
        currentNode = Node(value: i, next: currentNode)
    }
    printLinkedList(node: currentNode)
}

func printLinkedList(node: Node?) {
    
    var currentNode = node
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
}

let thirdNode = Node(value: 2, next: nil)
let secondNode = Node(value: 3, next: thirdNode)
let firstNode = Node(value: 1, next: secondNode)

//printLinkedList(node: firstNode)
sortLinkedList(node: firstNode)
