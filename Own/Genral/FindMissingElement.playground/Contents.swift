
/*
 - Find the missing element
 */

let elements = [1, 2, 3, 5, 6, 7, 8, 9, 10]

var n = elements.count
var total = (n+1)*(n+2)/2
//print("Total: \(total)")
for i in 0..<elements.count {
//    print("element[i]:\(elements[i])")
    total -= elements[i]
//    print("Total: \(total)\n")
}
print("Missing element is: \(total)")
