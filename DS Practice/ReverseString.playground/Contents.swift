
import Foundation

extension String {
    mutating func swapAt(index1: Int, index2: Int) {
        var characters = Array(self)
        characters.swapAt(index1, index2)
        self = String(characters)
    }
}

var str = "Hello, playground"

func reverseString(str: String) -> String {
    var revesedString = str
    for index in 0..<revesedString.count/2 {
        revesedString.swapAt(index1: index, index2: revesedString.count - index - 1)
    }
    return revesedString
}

func reverse(str: String) -> String {
    var reversed = ""
    for ch in str {
        reversed = String(ch) + reversed
    }
    return reversed
}

reverseString(str: str)
//reverse(str: str)
