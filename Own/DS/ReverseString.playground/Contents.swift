//: Playground - noun: a place where people can play

import Foundation

extension String {
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}

func swap<T>(element a: inout T, b: inout T) {
    let t = a
    a = b
    b = t
}

var str = "Hello, playground"
for i in 0..<str.count/2 {
    print("firstIndex:\(str[i]) \t lastIndex: \(str[str.count-i-1])")
}
print(str)

