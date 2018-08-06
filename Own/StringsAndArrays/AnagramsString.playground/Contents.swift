

/*
 - Making an String Anagram
 */

extension String {
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}

var str1 = "abc"
var str2 = "cde"

for i in 0..<str1.count {
    for j in 0..<str2.count {
        let ch1 = str1[i]
        let ch2 = str2[j]
        print("Ch1: \(ch1) \t Ch2: \(ch2)\n")
    }
}

