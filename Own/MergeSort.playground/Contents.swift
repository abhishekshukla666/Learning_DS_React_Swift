
import UIKit

func mergeSort<T: Comparable>(_ array: [T], isOrderedBefore: (T, T) -> Bool) -> [T] {

    guard array.count > 1 else { return array }
    let midIndex = array.count/2
    let leftArray = mergeSort(Array(array[0..<midIndex]), isOrderedBefore: isOrderedBefore)
    let rightArray = mergeSort(Array(array[midIndex..<array.count]), isOrderedBefore: isOrderedBefore)
    
    return merge(pile: leftArray, rightPile: rightArray, isOrderedBefore: isOrderedBefore)
}

func merge<T: Comparable>(pile leftPile: [T], rightPile: [T], isOrderedBefore: (T, T) -> Bool) -> [T] {
    var sortedArray = [T]()
    var left = leftPile
    var right = rightPile
    
    while left.count > 0 && right.count > 0 {
        if isOrderedBefore(left.first!, right.first!) {
            sortedArray.append(left.first!)
            left.remove(at: 0)
        } else {
            sortedArray.append(right.first!)
            right.remove(at: 0)
        }
    }
    return sortedArray + right + left
}

let unsortedArray = [3]
let sortedArray = mergeSort(unsortedArray, isOrderedBefore: <)
