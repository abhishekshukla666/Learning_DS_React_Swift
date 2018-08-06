//: Playground - noun: a place where people can play

import UIKit

var array = [1, 2, 3, 4, 5]

//func rotateArray(left atIndex: Int) {
//    array.insert(array[atIndex], at: 0)
//    array.remove(at: atIndex + 1)
//}

func moveElementToNext(index index: Int) -> [Int] {
    if array.count < 2 { return array }
    var newArray = [Int]()
    var counter = index
    var firstCounter = 0
    for i in 0..<array.count {
        if counter >= array.count {
            newArray.append(array[firstCounter])
            firstCounter += 1
        } else {
            newArray.append(array[counter])
        }
        counter += 1
    }
    
    return newArray
}

print(moveElementToNext(index: 3))
