
import Foundation

//// Method 1
//func quicksort<T: Comparable>(_ a: [T]) -> [T] {
//    guard a.count > 1 else { return a }
//
//    let pivot = a[a.count/2]
//    let less = a.filter { $0 < pivot }
//    let equal = a.filter { $0 == pivot }
//    let greater = a.filter { $0 > pivot }
//
//    return quicksort(less) + equal + quicksort(greater)
//}
//
//// Method 2
//func quicksortLomuto<T: Comparable>(_ a: inout [T], low: Int, high: Int) {
//    if low < high {
//        let p = partitionLomuto(&a, low: low, high: high)
//        print("1st Lomuto - Low: \(low), high: \(p-1)")
//        quicksortLomuto(&a, low: low, high: p - 1)
//        print("2nd Lomuto - Low: \(p+1), high: \(high)")
//        quicksortLomuto(&a, low: p + 1, high: high)
//    }
//}
//
//func partitionLomuto<T: Comparable>(_ a: inout [T], low: Int, high: Int) -> Int {
//    let pivot = a[high] // Making Hight value as pivot
////    print("Pivot: \(pivot)")
//
//    var i = low
//    for j in low..<high {  // Starting loop from low to high
////        print("i: \(i)")
////        print("J: \(j)")
////        print("Comparing a[j]:\(a[j]) and pivot: \(pivot)")
//        if a[j] <= pivot {
////            print("swaping a[i]: \(a[i]), a[j]: \(a[j])")
//            a.swapAt(i, j)
////            (a[i], a[j]) = (a[j], a[i])
//            i += 1
//        }
//    }
////    (a[i], a[high]) = (a[high], a[i])
//    a.swapAt(i, high)
//
////    print("Returning i:\(i)")
////    print("\n")
//    return i
//}


func quickSort<T: Comparable>(_ array: inout [T], low: Int, high: Int, isOrdered: (T, T) -> Bool) -> [T] {
    if low < high {
        let i = partition(&array, low: low, high: high, isOrdered: isOrdered)
        quickSort(&array, low: low, high: i - 1, isOrdered: isOrdered)
        quickSort(&array, low: i + 1, high: high, isOrdered: isOrdered)
    }
    return array
}

func partition<T: Comparable>(_ array: inout [T], low: Int, high: Int, isOrdered: (T, T) -> Bool) -> Int {
    
    let pivot = array[high]
    var i = low
    for j in low..<high {
        if isOrdered(array[j], pivot) {
            array.swapAt(i, j)
            i += 1
        }
    }
    array.swapAt(i, high)
    print("Partionaly Array: \(array)")
    return i
}

var unSortedArray = [6, 2, 4, 5, 7, 1, 9, 8, 10, 3]
//quicksort(unSortedArray)
quickSort(&unSortedArray, low: 0, high: unSortedArray.count - 1, isOrdered: <)
