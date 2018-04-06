//: [Previous](@previous)

import Foundation

func reverse<T>(array arr: inout [T], count: Int) -> [T] {
    var i = 0
    var j = count - 1
    
    repeat {
//        arr.swapAt(i, j)
        let temp = arr[i]
        arr[i] = arr[j]
        arr[j] = temp
        
        i = i + 1
        j = j - 1
    } while i < j
    
    return arr
}

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var arr = [4, 5, 1 ,2 , 3, 6 ,8, 7, 9]
//var arr = [ "A", "B", "C", "D", "E","F","G"]
print ("           Array:  \(arr.map { String($0) }.joined(separator: " "))")
let reversedArr = reverse(array: &arr, count: arr.count)
print("  Reversed Array:  \(reversedArr.map { String($0) }.joined(separator: " "))")
