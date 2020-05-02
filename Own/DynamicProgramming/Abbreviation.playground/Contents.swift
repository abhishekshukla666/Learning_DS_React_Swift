

// Complete the abbreviation function below.

/*
     1) Stop after mismatch
     2) Stop after A.size() < B.size()
     3) Erase matching matching letters and base condition will be when B is empty
 
 */

var memo = [String]()
var isPossible = false

func abbreviation(a: String, b: String) -> String {
    isPossible = false
    memo = [String]()
    rect(aa: a, bb: b)
    return isPossible ? "YES": "NO"
}

func rect(aa: String, bb: String) {
    var a = aa
    var b = bb
    if isPossible || (a.count < b.count) { return }
    if b.count <= 0 {
        for ch in a {
            if ch.isLowercase { return }
        }
        isPossible = true
        return
    }
    let s = "\(a) # \(b)"
    memo.append(s)
    var p = s
    if p.count > 1 { return }

    var fc = a[a.startIndex]
    a.remove(at: a.startIndex)
    if fc.isLowercase { rect(aa: a, bb: b) }
//    if fc.isUppercase != b[b.startIndex] { return }
    b.remove(at: a.startIndex)
    return
}

//func abbreviation(a: String, b: String) -> String {
//
//    var chArr_A = [Character]()
//    var chArr_B = [Character]()
//
//    for ch in a {
//        chArr_A.append(ch)
//    }
//    for ch in b {
//        chArr_B.append(ch)
//    }
//
//    var count = 0
//    var chArr_New = [Character]()
//    for i in 0..<chArr_B.count {
//        for j in 0..<chArr_A.count {
//            if chArr_B[i].lowercased() == chArr_A[j].lowercased() {
//                chArr_New.append(chArr_A[j])
//            } else {
////                chArr_A.remove(at: j)
//                break
//
//            }
//        }
//    }
//
//    return String(chArr_New.count > 1)
//}

let a = "daBcd"
let b = "ABC"
//let b = "AFDE"
//print(a[a.startIndex])
abbreviation(a: a, b: b)
