//: [Previous](@previous)

import Foundation

extension Array where Element : Comparable {
    
    mutating func bubble(_ order: (Element, Element) -> Bool) -> Array {
        // 1
        var counter = -1
        // 2
        var iterations: Int = 0
        // 3
        repeat {
            // 4
            counter = 0
            // 5
            let times = self.count - (iterations + 1)
            // 6
            for x in 0..<times {
                // 7
                if order(self[x + 1], self[x]) {
                    counter += 1
                    self.swapAt(x, x + 1)
                }
            }
            // 8
            iterations += 1
            // 9
        } while counter != 0
        // 10
        return self
    }
}

var array = [5,3,4,6,8,2,9,1,7,10,11]




// [5, 3, 4, 6, 8, 2, 9, 1, 7, 10, 11]
print(array.bubble({ (_,_) -> Bool in
    print(array)
}))

// [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
print(sortedArray as Array)

print("Array is sorted in \(swaps) swaps.")
