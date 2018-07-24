
import Foundation

func binarySearch<T: Comparable>(element key: T, array: [T]) -> Bool {

    let midIndex = array.count/2
    let mid = array[midIndex]
    print("Comparing key:\(key) with mid:\(mid)\n")
    
    let leftArray = Array(array[0..<midIndex])
    let rightArray = Array(array[midIndex..<array.count])
    
    if key == mid {
        return true
    } else if key < mid && (leftArray.count > 1 || rightArray.count > 1) {
        return binarySearch(element: key, array: leftArray)
    } else if key > mid && (leftArray.count > 1 || rightArray.count > 1) {
        return binarySearch(element: key, array: rightArray)
    }
    return false
}

var hundred = [Int]()
for i in 1...100 {
    hundred.append(i)
}

binarySearch(element: 101, array: hundred)

