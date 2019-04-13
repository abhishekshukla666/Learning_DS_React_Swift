import UIKit

let arr1 = [17, 28, 30]
let arr2 = [99, 16, 8]

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var aliceCount = 0
    var bobCount = 0
    var finalCompare = [Int]()
    
    for index in 0..<a.count {
        let a = a[index]
        let b = b[index]
        if a > b { aliceCount += 1 }
        else if b > a { bobCount += 1 }
    }
    
    finalCompare.append(aliceCount)
    finalCompare.append(bobCount)
    return finalCompare
}

//print(compareTriplets())
