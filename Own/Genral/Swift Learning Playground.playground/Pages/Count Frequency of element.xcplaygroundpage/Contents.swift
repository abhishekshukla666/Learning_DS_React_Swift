//: [Previous](@previous)

import Foundation

//func  countFrequencyOfElement(arr: [Int]) {
//    
//    var i = 0
//    let count = arr.count
//    var arr = arr
//    while i < count {
//        if arr[i] <= 0 {
//            i = i+1
//            continue
//        }
//        let elementIndex = arr[i]-1;
//        
//        // If the elementIndex has an element that is not
//        // processed yet, then first store that element
//        // to arr[i] so that we don't loose anything.
//        if (arr[elementIndex] > 0)
//        {
//            arr[i] = arr[elementIndex]
//            
//            // After storing arr[elementIndex], change it
//            // to store initial count of 'arr[i]'
//            arr[elementIndex] = -1
//        }
//        else
//        {
//            // If this is NOT first occurrence of arr[i],
//            // then increment its count.
////            arr[elementIndex] = arr[elementIndex] - 1
////            
////            // And initialize arr[i] as 0 means the element
////            // 'i+1' is not seen so far
////            arr[i] = 0
////            i = i+1
//        }
//    }
//    
//    for j in 0..<count {
//        print("\(j+1) => \(arr[j])")
//    }
//}

//let arr = [2, 3, 3 , 2, 5, 6, 7, 3, 9]
//countFrequencyOfElement(arr: arr)
