//: Playground - noun: a place where people can play

import UIKit

var array = [1, 2, 3, 4, 5, 6]

func rotateArray(left atIndex: Int) {
    array.insert(array[atIndex], at: 0)
    array.remove(at: atIndex + 1)
}

func moveElementToNext(index: Int) -> [Int] {
    if array.count < 2 { return array }
    var newArray = [Int]()
    var leftRotationCounter = index
    var firstCounter = 0
    for _ in 0..<array.count {
        print(leftRotationCounter, array.count)
        if leftRotationCounter >= array.count {
            newArray.append(array[firstCounter])
            firstCounter += 1
        } else {
            newArray.append(array[leftRotationCounter])
        }
        leftRotationCounter += 1
    }
    
    return newArray
}

print(moveElementToNext(index: 2))
//rotateArray(left: 4)
//print(array)
