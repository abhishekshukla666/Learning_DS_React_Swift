
import Foundation

// Complete the repeatedString function below.
/*
 Formula - (count of a's * n/a's count + n % a's count)
 Example - str = 'abcac' count = 5 and a'sCount = 2
 
 */
func repeatedString(s: String, n: Int) -> Int {
//    var count = 0
//    for ch in s {
//        if ch == "a" {
//            count += 1
//        }
//    }
//    func getTheRestOfAs(_ rest: Int) -> Int {
//        print("Rest: \(rest)")
//        var count = 0
//        var iteration = 0
//        for character in s {
//            print("ch \(character)")
//            if iteration < rest {
//                count += character == "a" ? 1 : 0
//                iteration += 1
//            } else { break }
//        }
//        print("rest count: \(count)")
//        return count
//    }
//    if count == s.count {
//        return n
//    } else {
//        count = (n/s.count) * count + getTheRestOfAs(n % s.count)
//    }
//    return count
    
    
    
        var aCount = 0
        for ch in s {
            if ch == "a" {
                aCount += 1
            }
        }
        if aCount == 0 { return 0 }; print(aCount)
        let division = n/s.count; print(division)
        let remainder = n%s.count; print(remainder)
    var finalRemainder = 0
    for ch in s {
        if finalRemainder < remainder {
            if ch == "a" {
                finalRemainder += 1
            }
        } else {
            break
        }
    }
    return aCount * division + finalRemainder
}

var s = "gfcaaaecbg"
var n = 547602
// ba ba ba ba ba
let count = repeatedString(s: s, n: n)



