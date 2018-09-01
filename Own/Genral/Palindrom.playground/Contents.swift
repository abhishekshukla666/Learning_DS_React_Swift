//: Playground - noun: a place where people can play

import Foundation

let str = "HleH"
extension String {
    subscript(i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}

func isPalindrom(str: String) -> Bool {
    if str.count < 2 { return true }
    
    var str = str
    for i in 0..<str.count/2 {
        let first = str[i]
        let last = str[str.count - i - 1]
        if first == last {
            str.removeFirst()
            str.removeLast()
            print("First: \(String(describing: str.first)) \t Last: \(String(describing: str.last)) \n")
            return isPalindrom(str: str)
        }
    }
    
    return false
}


isPalindrom(str: str)

