

/*
 - Making an String Anagram
 */

let str1 = "jxwtrhvujlmrpdoqbisbwhmgpmeoke"
let str2 = "fcrxzwscanmligyxyvym"

var dict1 = [String: Int]()
var dict2 = [String: Int]()
var count = 0

for ch in str1.lowercased() {
    let s = String(describing: ch)
    if dict1[s] != nil {
        count = dict1[s]!
        dict1[s] = count + 1
    } else {
        dict1[s] = 1
    }
}

for ch in str2.lowercased() {
    let s = String(describing: ch)
    if dict2[s] != nil {
        count = dict2[s]!
        dict2[s] = count + 1
    } else {
        dict2[s] = 1
    }
}

var charCountToRemove = 0
for ch in "abcdefghijklmnopqrstuvwxyz" {
    let ch = String(describing: ch)    
    var firstCount = 0
    var secondCount = 0
    if let firstChCount = dict1[ch] { firstCount = firstChCount } else { firstCount = 0 }
    if let secondChCount = dict2[ch] { secondCount = secondChCount } else { secondCount = 0 }
    charCountToRemove += abs(firstCount - secondCount)
}
print("Remove Character count: ", charCountToRemove)

