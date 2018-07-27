//: Playground - noun: a place where people can play

import Foundation

var str = "Abhishek Shukla"

func maxOccaranceOf(string str: String) -> (String, Int) {
    var occurance = [String: Int]()
    for i in str.lowercased() {
        if occurance["\(i)"] == nil { occurance["\(i)"] = 1 }
        else if let count = occurance["\(i)"] { occurance["\(i)"] = count + 1 }
    }
    print(occurance)
    
    var finalChar = ""
    var count = 0
    for (key, value) in occurance {
        if count < value {
            count = value
            finalChar = ""
            finalChar = key
        }
    }
    
    return (finalChar, count)
}

print("Max occurance of character:", maxOccaranceOf(string: str))
