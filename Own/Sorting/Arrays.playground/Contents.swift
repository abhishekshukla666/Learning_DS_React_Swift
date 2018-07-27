//: Playground - noun: a place where people can play

import Foundation

func mergeSortedArray<T: Comparable>(_ array1: [T], array2: [T]) -> [T] {
    var sortedArray = [T]()
    var array1 = array1
    var array2 = array2
    if array1.count <= 0 { return array2 }
    if array2.count <= 0 { return array1 }

    while array1.count > 0 && array2.count > 0 {
        if array1.first! < array2.first! {
            sortedArray.append(array1.first!)
            array1.remove(at: 0)
        } else {
            sortedArray.append(array2.first!)
            array2.remove(at: 0)
        }
    }
    
    while array1.count > 0 {
        sortedArray.append(array1.first!)
        array1.remove(at: 0)
    }
    
    while array2.count > 0 {
        sortedArray.append(array2.first!)
        array2.remove(at: 0)
    }
    
    return sortedArray
}


let arr1 = [1, 3, 5, 7, 9, 11, 13, 15, 17]
let arr2 = [2, 4, 6, 8, 10, 12, 14]

print(mergeSortedArray(arr1, array2: arr2))
