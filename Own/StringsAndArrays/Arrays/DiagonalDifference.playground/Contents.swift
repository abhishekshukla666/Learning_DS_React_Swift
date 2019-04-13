
import Foundation
let dummyArray2D = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 1, 2, 3],
    [4, 5, 6, 7]
]

let array2D = [
        [3],
        [11, 2, 4],
        [4, 5, 6],
        [10, 8, -12]
//    [2],
//    [4, 1],
//    [-1, 1, -7, -8],
//    [-10, -8, -5, -2],
//    [0, 9, 7, -1],
//    [4, 4, -2, 1]
]

func subArrayOfSameCount(arr: [[Int]]) -> [[Int]] {
    var newArray: [[Int]] = []

    var subIndex = 0

    for i in 0..<arr.count {
        let subArrCount = arr[i].count
        var prevSubArrCount = 0
        var nextSubArrCount = 0
        if (arr.indices.contains(i+1)) {
            nextSubArrCount = arr[i+1].count
        }
        if (arr.indices.contains(i-1)) {
            prevSubArrCount = arr[i-1].count
        }

        if (subArrCount == prevSubArrCount) || ( subArrCount == nextSubArrCount) {
            if (subArrCount == prevSubArrCount) {
                print("Prev Array Element: ", arr[i-1][subIndex])
                subIndex += 1
            }
            if (subArrCount == nextSubArrCount) {
                print("Next Array Element: ", arr[i+1][subIndex])
            }
            newArray.append(arr[i])
        }
    }
    print("New Sum array: \t", newArray)
    return newArray
}

func diagonalDifference(arr: [[Int]]) -> Int {
    
    let maxRow = arr.count
    print("There are \(maxRow) rows.")
    
    // Checking if the 2D array is a matrix and that the amount of rows matches the number of collumns
    for col in arr {
        if col.count > arr.count {
            print("Error! Rows and columns can’t be of different sizes. Please use 3x3, 5x5 or simmilar.")
        } else if arr.count > col.count {
            print("Error! Rows and columns can’t be of different sizes. Please use 3x3, 5x5 or simmilar.")
        }
    }
    
    var primaryDiagonal = 0
    var secondaryDiagonal = 0
    
    for i in 0..<maxRow {
        primaryDiagonal += arr[i][i]
        secondaryDiagonal += arr[i][maxRow - i - 1]
    }
    print("The primary diagonal is \(primaryDiagonal).")
    print("The secondary diagonal is \(secondaryDiagonal).")
    
    var difference = primaryDiagonal - secondaryDiagonal
    // updated the code to take the absolute difference into consideration
    if difference < 0 {
        difference = difference * -1
    }
    print("The difference is \(difference).")
    
    return difference
}

let makeSomeMagic = diagonalDifference(arr: subArrayOfSameCount(arr: array2D))



