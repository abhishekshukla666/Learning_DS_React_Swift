//: Playground - noun: a place where people can play

import Foundation

func selectionSort<T: Comparable>(_ array: [T], isOrdered: (T, T) -> Bool) -> [T] {
    var array = array
    for f in 0..<array.count {
        for v in f+1..<array.count {
            if isOrdered(array[f], array[v]) {
                array.swapAt(f, v)
            }
        }
    }
    return array
}

let unSortedArray = [3, 2, 5, 1, 4]
//let unSortedArray = ["C", "B", "A", "F", "D"]
let sortedArray = selectionSort(unSortedArray, isOrdered: >)
print(sortedArray)
