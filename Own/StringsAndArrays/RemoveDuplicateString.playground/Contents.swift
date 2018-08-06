

var strArray = ["a", "b", "c", "a"]
var str = ""
for i in 0..<strArray.count {
    print(strArray[i])
    let ch = Character(strArray[i])
    if !str.contains(ch) {
        str += String(ch)
        
    }
}
