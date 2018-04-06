import Foundation
import UIKit

/*
 ------------------------------------------ Merge Sort - O(n log n) ------------------------------------------
 */

func mergeSort(arr: [Int]) -> [Int] {

    guard arr.count > 1 else {
        return arr
    }
    let left = Array(arr[0..<arr.count/2])
    let right = Array(arr[arr.count/2..<arr.count])
    return merge(left: mergeSort(arr: left), right: mergeSort(arr: right))
}

func merge(left: [Int], right: [Int]) -> [Int] {

    var merged:[Int] = []
    var left = left
    var right = right

    while left.count > 0 && right.count > 0 {

        if left.first! < right.first! {
            merged.append(left.removeFirst())
        } else {
            merged.append(right.removeFirst())
        }
    }

    return merged + left + right

}

var numbers:[Int] = []

for _ in 0..<30 {
    let number = Int(arc4random_uniform(UInt32(100)))
    numbers.append(number)
}

print("\(numbers) \n")
print(mergeSort(arr: numbers))

/*
 ------------------------------------------ Bubble Sort - O(nˆ2) ------------------------------------------
 */

