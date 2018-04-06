import Foundation
import UIKit

/*
 ------------------------------------------ Binary Search ------------------------------------------
 */

var hundredArray = [Int]()
for i in 1...100 {
    hundredArray.append(i)
}

func searchBinaryForValue(searchValue: Int, array: [Int]) -> Bool {

    var leftIndex = 0
    var rightIndex = array.count-1

    while leftIndex <= rightIndex {

        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]

        print("MiddleValue: \(middleValue), LeftIndex: \(leftIndex), RightIndex: \(rightIndex), [\(array[leftIndex]), \(array[rightIndex]))]")
        if searchValue == middleValue {
            return true
        }

        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }

        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }

    return false
}

print(searchBinaryForValue(searchValue: 38, array: hundredArray))

