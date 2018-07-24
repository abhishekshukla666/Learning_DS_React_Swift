//: Playground - noun: a place where people can play

import Foundation

func bubbleSort<T: Comparable>(_ unArray: [T], isOrdered: (T, T) -> Bool) -> [T] {
    var array = unArray
    for _ in 0..<array.count {
        for i in 0..<array.count-1 {
            if isOrdered(array[i], array[i+1]) {
                array.swapAt(i, i+1)
            }
        }
    }
    return array
}

let unSortedArray = [3, 2, 4, 5, 1]
let sortedArray = bubbleSort(unSortedArray, isOrdered: >)
print(sortedArray)
