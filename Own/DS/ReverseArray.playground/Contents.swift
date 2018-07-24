//: [Previous](@previous)

import Foundation

var arr = [4, 5, 1 ,2 , 3, 6 ,8, 7, 9]
for i in 0..<arr.count/2 {
    arr.swapAt(i, arr.count - i - 1)
}
print(arr)
