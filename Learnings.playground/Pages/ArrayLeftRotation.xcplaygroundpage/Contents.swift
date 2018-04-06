//: [Previous](@previous)

import Foundation

//func leftRotation(_ numArr: inout [Int], d: Int) -> [Int] {
//
//    var count = 0
//    let i = 0
//    let temp = numArr[0]
//    repeat {
//        for index in 0..<numArr.count - 1 {
//            numArr[index] = numArr[index+1]
//        }
//        numArr[numArr.count - 1] = temp
//        print(i)
//        count = count + 1
//    }while count < d
//
//    return numArr
//}

/*Function to left rotate arr[] of size n by d*/
func leftRotate(_ arr: inout [Int], d: Int, n: Int) -> [Int] {
    for index in 0..<d {
        leftRotatebyOne(&arr, n: n)
    }
    return arr
}

func leftRotatebyOne(_ arr: inout [Int], n: Int) {
    var i = 0
    let temp = arr[0]
    for index in 0..<arr.count - 1 {
         arr[i] = arr[i + 1]
    }
    arr[arr.count - 1] = temp
}

var arr = [1, 2, 3, 4, 5]
print(leftRotate(&arr, d: 4, n: arr.count))

