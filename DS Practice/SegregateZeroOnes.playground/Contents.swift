

var str = "000100111011"

func segregate(str: String) -> String {
    var segredString: String = ""
    var newArray = [String]()
    var zeroCount = 0
    let charArray = Array(str)
    for i in 0..<charArray.count {
        if charArray[i] == "0" {
            zeroCount += 1
            newArray.append("0")
        }
    }
    for _ in zeroCount..<charArray.count {
        newArray.append("1")
    }
    segredString = newArray.joined()
    print(segredString)
    return segredString
}
segregate(str: str)
