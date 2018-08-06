//: Playground - noun: a place where people can play

import Foundation

extension String {
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}

extension String {
    mutating func swapAt(_ index1: Int, _ index2: Int) {
        var characters = Array(self)
        characters.swapAt(index1, index2)
        self = String(characters)
    }
}

var str = "alkuhs kehsihba"
for i in 0..<str.count/2 {
    str.swapAt(i, str.count-i-1)
}
print(str)

