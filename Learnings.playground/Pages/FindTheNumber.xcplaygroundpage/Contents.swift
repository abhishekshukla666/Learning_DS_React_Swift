//: [Previous](@previous)

import Foundation

func findNumber(_ arr: [Int], k: Int) -> String {
    
    for num in arr {
        if k == num {
            return "YES"
        }
    }
    return "NO"
}
let numbers = [1, 3, 8, 9, 10, 98, 4, 5, 15]
print(findNumber(numbers, k:3))
