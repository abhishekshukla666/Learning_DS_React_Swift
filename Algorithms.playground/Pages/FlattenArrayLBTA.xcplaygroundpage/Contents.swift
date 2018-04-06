
import UIKit

func flattenArray(nestedArray: [Any]) -> [Int] {
    
    var myFlattenedArray = [Int]()
    
    for element in nestedArray {
        print(element)
        if element is Int {
            myFlattenedArray.append(element as! Int)
        } else if element is [Any] {
            
            let recursionResult = flattenArray(nestedArray: element as! [Any])
            for num in recursionResult {
                myFlattenedArray.append(num)
            }
            
//            let nestedElements = element as! [Int]
//            for num in nestedElements {
//                myFlattenedArray.append(num)
//            }
        }
    }
    
    return myFlattenedArray
}

let result = flattenArray(nestedArray: [[-1, 0], 1, [2, [3, [4, [5, 6, 7]]]]])
print("Result:", result)

// [1] -> [1]
// [1, 2, 3] -> [1, 2, 3]
// [1, [2]] -> [1, 2]
// [1, [2, 3]] -> [1, 2, 3]
// [1, [2, [3, 4]]] -> [1, 2, 3, 4]
// [1, [2, [3, [4]]]]















