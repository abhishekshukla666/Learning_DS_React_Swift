import Foundation
import UIKit
/*
 ------------------------------------------ Retain Cycle ------------------------------------------
 */

class Animal {
    
    var name: String = ""

    init(name: String) {
        self.name = name
    }
    
    /*
     Clouser Retain Cycle
    */
    lazy var color: ()-> String = { [weak self] in
        guard let this = self else { return "" }
        return "\(this.name) color is red"
    }
    
    deinit {
        print("\(name) deinit called")
    }
}

class Dog{
    
    /*
     Class Reference Retain Cycle
    */
    weak var animal: Animal?
    init(animal: Animal) {
        self.animal = animal
    }
    
    deinit {
        print("dog deinit called")
    }
}

var animal: Animal? = Animal(name: "Tommy")
animal?.color()

var dog: Dog? = Dog(animal: animal!)
//dog.animal = animal

animal = nil
//dog = nil

/*
 ------------------------------------------ Reverse Linked List ------------------------------------------
 */

//class Node {
//    
//    let value: Int
//    var next: Node?
//    
//    init(value: Int, next: Node? ) {
//        self.value = value
//        self.next = next
//    }
//}
//
//let thirdNode = Node(value: 3, next: nil)
//let secondNode = Node(value: 2, next: thirdNode)
//let firstNode = Node(value: 1, next: secondNode)
//
//func printLinkedList( node: Node?) {
//    print("Starting out list of nodes")
//    
//    var currentNode = node
//    while currentNode != nil {
//        print(currentNode?.value ?? -1)
//        currentNode = currentNode?.next
//    }
//}
//
//printLinkedList(node: firstNode)
//
//// 1->2->3->nil
//
//// nil<-1->2->3->nil
//// nil<-1<-2->3->nil
//// nil<-1<-2<-3
//
//// nil<-1<-2<-3
//// nil->1->2->3
//
//func reverseLinkedList(node: Node?) -> Node?{
//    
//    var currentNode = node
//    var prevNode: Node?
//    var nextNode: Node?
//    
//    while currentNode != nil {
//        
//        nextNode = currentNode?.next
//        currentNode?.next = prevNode
//        
//        print("Prev: \(prevNode?.value ?? -1), Current: \(currentNode?.value ?? -1), Next: \(nextNode?.value ?? -1)")
//        
//        prevNode = currentNode
//        currentNode = nextNode
//    }
//    return prevNode
//}
//
//let reverseList = reverseLinkedList(node: firstNode)
//printLinkedList(node: reverseList)


/*
 ------------------------------------------ Draw Circle ------------------------------------------
 */

//class CircleView: UIView {
//    
//    override func draw(_ rect: CGRect) {
//        
//        let path = UIBezierPath()
//        
//        let radius: Double = Double(rect.width / 2) - 20.0
//        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
//        
//        path.move(to: CGPoint(x: center.x + CGFloat(radius), y: center.y))
//        
//        for i in stride(from: 0, to: 361.0, by: 1) {
//            
//            // radians = degree * PI / 180
//            
//            let radian = i * Double.pi / 180
//            
//            let x = Double(center.x) + radius * cos(radian)
//            let y = Double(center.y) + radius * sin(radian)
//            
//            path.addLine(to: CGPoint(x: x, y: y))
//            print(x, y)
//        }
//        path.lineWidth = 3
//        path.stroke()
//    }
//}

//let circleView = CircleView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
//circleView.backgroundColor = .white

/*
 ------------------------------------------ Stacks ------------------------------------------
 */

//class Node<T> {
//    
//    let value: T
//    var next: Node<T>?
//    init(value: T) {
//        self.value = value
//    }
//}
//
//class Stack<T> {
//    
//    var top: Node<T>?
//    
//    func push(value: T) {
//        let oldTop = top
//        top = Node(value: value)
//        top?.next = oldTop
//    }
//    
//    func pop () -> T? {
//        let currentTop = top
//        top = top?.next
//        return currentTop?.value
//    }
//}
//
//struct Person {
//    let name: String
//    let username: String
//}
//
//let firstUser = Person(name: "Me", username: "@me")
//let secondUser = Person(name: "You", username: "@you")
//
//let userStack = Stack<Person>()
//userStack.push(value: firstUser)
//userStack.push(value: secondUser)
//
//let firstTopUser = userStack.pop()
//print(firstTopUser?.name ?? "")
//
//var stack = Stack<Int>()
//stack.push(value: 1)
//stack.push(value: 2)
//stack.push(value: 3)
//
//let firstTop = stack.pop()
//let secondTop = stack.pop()
//let thirdTop = stack.pop()

/*
 ------------------------------------------ Binary Search ------------------------------------------
 */

//var hundredArray = [Int]()
//for i in 1...100 {
//    hundredArray.append(i)
//}
//
//func searchBinaryForValue(searchValue: Int, array: [Int]) -> Bool {
//
//    var leftIndex = 0
//    var rightIndex = array.count-1
//
//    while leftIndex <= rightIndex {
//        
//        let middleIndex = (leftIndex + rightIndex) / 2
//        let middleValue = array[middleIndex]
//        
//        print("MiddleValue: \(middleValue), LeftIndex: \(leftIndex), RightIndex: \(rightIndex), [\(array[leftIndex]), \(array[rightIndex]))]")
//        if searchValue == middleValue {
//            return true
//        }
//        
//        if searchValue < middleValue {
//            rightIndex = middleIndex - 1
//        }
//        
//        if searchValue > middleValue {
//            leftIndex = middleIndex + 1
//        }
//    }
//    
//    return false
//}
//
//print(searchBinaryForValue(searchValue: 38, array: hundredArray))

/*
 ------------------------------------------ Time Display On Social Media ------------------------------------------
 */

extension Date {
    
    func timeAgoDisplay() -> String {
        let secondsAgo = Int(Date().timeIntervalSince(self))
        
        let minutes = 60
        let hour    = minutes * 60
        let day     = hour * 24
        let week    = day * 7
        let month   = week * 4
        
        let quotient: Int
        let unit: String
        
        if secondsAgo < minutes {
            quotient    = secondsAgo
            unit        = "seconds"
        } else if secondsAgo < hour {
            quotient    = secondsAgo / minutes
            unit        = "min"
        } else if secondsAgo < day {
            quotient    = secondsAgo / hour
            unit        = "hour"
        } else if secondsAgo < week {
            quotient    = secondsAgo / day
            unit        = "day"
        } else if secondsAgo < month {
            quotient    = secondsAgo / week
            unit        = "week"
        } else {
            quotient    = secondsAgo / month
            unit        = "month"
        }
        
        return "\(quotient) \(unit)\(quotient == 1 ? "" : "s") ago"
    }
}
let now = Date()
let pastDate = Date(timeIntervalSinceNow: -64 * 65 * 24 * 7 * 2)
pastDate.timeAgoDisplay()


/*
 ------------------------------------------ Recursive Search through Binary Tree ------------------------------------------
 */

//                        10
//                      /    \
//                    5        12
//                  /        /    \
//                4        11      20

//class Node {
//    
//    let value:Int
//    var leftChild: Node?
//    var rightChild: Node?
//    
//    init(value: Int, leftChild: Node?, rightChild: Node?) {
//        self.value = value
//        self.leftChild = leftChild
//        self.rightChild = rightChild
//    }
//}
//
//// Right Child 
//let elevenNode = Node(value: 11, leftChild: nil, rightChild: nil)
//let twentyNode = Node(value: 20, leftChild: nil, rightChild: nil)
//let twelveNode = Node(value: 12, leftChild: elevenNode, rightChild: twentyNode)
//
//// Left Child
//let fourNode = Node(value: 4, leftChild: nil, rightChild: nil)
//let fiveNode = Node(value: 5, leftChild: fourNode, rightChild: nil)
//
//
//// Root Tree
//let tenRootNode = Node(value: 10, leftChild: fiveNode, rightChild: twelveNode)
//
//
//func search(node: Node?, searchValue: Int) -> Bool {
//    guard let nodeValue = node else {
//        return false
//    }
//    if node?.value == searchValue {
//        return true
//    } else if searchValue < node!.value {
//        return search(node: node?.leftChild, searchValue: searchValue)
//    } else if searchValue > node!.value {
//        return search(node: node?.rightChild, searchValue: searchValue)
//    }
//    return false
//}
//
//print(search(node: tenRootNode, searchValue: 0))

/*
 ------------------------ (KVO) KeyValueObserving & (KVC) KeyValueCoding ------------------------
 */

//class User: NSObject {
//    
//    dynamic var userName: String!
//    init(userName: String) {
//        super.init()
//        self.userName = userName
//    }
//}
//
//private var myContext = 0
//class UserManager: NSObject {
//    
//    var user: User
//    init(withUser user: User) {
//        self.user = user
//        super.init()
//        
//        user.addObserver(self, forKeyPath: #keyPath(User.userName), options: .new, context: &myContext)
//    }
//    
//    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
//        if context == &myContext {
//            if let changedName = change?[.newKey]! as? String {
//                print("Value has changed to \(changedName)")
//            }
//        }
//    }
//}
//
//let user = User(userName: "Abhishek")
//
//let userManager = UserManager(withUser: user)
//user.userName = "Shukla"


/*
 ------------------------------------------ Merge Sort - O(n log n) ------------------------------------------
 */

//func mergeSort(arr: [Int]) -> [Int] {
//    
//    guard arr.count > 1 else {
//        return arr
//    }
//    let left = Array(arr[0..<arr.count/2])
//    let right = Array(arr[arr.count/2..<arr.count])
//    return merge(left: mergeSort(arr: left), right: mergeSort(arr: right))
//}
//
//func merge(left: [Int], right: [Int]) -> [Int] {
//    
//    var merged:[Int] = []
//    var left = left
//    var right = right
//    
//    while left.count > 0 && right.count > 0 {
//        
//        if left.first! < right.first! {
//            merged.append(left.removeFirst())
//        } else {
//            merged.append(right.removeFirst())
//        }
//    }
//    
//    return merged + left + right
//    
//}
//
//var numbers:[Int] = []
//
//for _ in 0..<30 {
//    let number = Int(arc4random_uniform(UInt32(100)))
//    numbers.append(number)
//}
//
//print("\(numbers) \n")
//print(mergeSort(arr: numbers))

/*
 ------------------------------------------ Bubble Sort - O(nˆ2) ------------------------------------------
 */



//Split Arrays

//class Cat: Animal {
//    
//    var catAnimal: Animal?
//    override init() {
//        super.init()
//        catAnimal = Animal()
//    }
//    
//    deinit {
//        print("Cat deinit called")
//    }
//    
//    override func makeSound() {
//        print("\( name) Meow..")
//    }
//}
/*
 --------------------Ends------------------------------
 */

//var array = ["one","two","three","four"]
//for element in array {
//    print(element)
//}
//
//var array2 = [1,2,3,4,5,6,7,8,9,10];
//
//func example1(integers: [Int]) {
//    
//    var number = 0
//    
//    for element in integers{
//    number += element
//    }
//    print("Sum all array items: \(number)")
//}
//
//example1(integers: array2)
//
//func example2() -> [Int] {
//    
//    var array = [Int]()
//
//    for i in 11...20 {
//		array.append(i)
//    }
//    
//    return array
//}
//
//var array3 = example2()
////show nsmutable array value sum
//example1(integers: array3)
//
////delete pair items from array
//func example3()  {
//    
//    var array = example2()
//	
//	array = array.filter({$0 % 2 != 0})
//	
//    //print pair items from array
//    example1(integers: array)
//}
//
////inferred types
//func getClassName(obj : Any) -> String {
//    let objectClass : AnyClass! = object_getClass(obj)
//    let className = objectClass.description()
//    
//    return className
//}
//
//let swiftArray = [1, 2, 3]
//let swiftDictionary = ["Name": "John Doe"]
//let cocoaArray : NSArray = [10, 20, 30]
//var mutableCocoaArray = NSMutableArray()
//
//var 🤔 = 5
//var cadena = "hola"
//
//print(getClassName(obj: swiftArray))
//print(getClassName(obj: swiftDictionary))
//print(getClassName(obj: cocoaArray))
//print(getClassName(obj: mutableCocoaArray))
//print(getClassName(obj: 🤔))
//print(getClassName(obj: cadena))
//print(🤔.description)
