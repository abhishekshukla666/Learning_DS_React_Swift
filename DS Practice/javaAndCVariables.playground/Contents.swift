
extension String {
    func capitalizingFirstLetter() -> String {
      return prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}

let cVariable = "this_is_a_c++_vairable"
let jVariable = "thisIsAJavaVariable"
// Expected - thisIsCTypeVariable

func jVariable(from cVariable: String) -> String {
    var javaVariable = ""
    let splitString = cVariable.split(separator: "_")
    for i in 0..<splitString.count {
        if i == 0 { javaVariable += String(splitString[i])
            continue
        }
        javaVariable += String(splitString[i]).capitalizingFirstLetter()
    }
    print(javaVariable)
    return javaVariable
}

func cVariable(from jVariable: String) -> String {
    var cVariable = ""
    var letters = Array(jVariable)
    var i = 0
    for _ in 0..<letters.count {
        if letters[i].isUppercase {
            letters.insert("_", at: i)
            i += 2
        } else { i += 1 }
    }
    cVariable = String(letters).lowercased()
    print(cVariable)
    return cVariable
}

jVariable(from: cVariable)
cVariable(from: jVariable)
