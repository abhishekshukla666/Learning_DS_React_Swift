
var str = "012"

func numerOfWays(_ encodedString: String?) -> String {
    
    var decodedString = ""
    guard let encodedString = encodedString else {
        return decodedString
    }
    
    for ch in encodedString {
        switch ch {
        case "1":
            decodedString += String(describing: "a")
            break
        case "2":
            decodedString += String(describing: "b")
            break
        default:
            break
        }
    }
    
    return decodedString
}

print(numerOfWays(str))
