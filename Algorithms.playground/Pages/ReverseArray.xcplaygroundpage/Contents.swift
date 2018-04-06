//: [Previous](@previous)

import Foundation

var arr = [4, 9, 12, 1, 8, 7, 10]

for index in 0..<arr.count/2 {
    arr.swapAt(index, arr.count - index - 1)
}

print(arr)
