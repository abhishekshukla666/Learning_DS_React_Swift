import UIKit

func aVeryBigSum(ar: [Int]) -> Int {
    
    var sum = 0
    for a in ar {
        sum += a
    }
    return sum
}

print(aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]))
