import Foundation


/*
 ------------------------------------------ Optional Unwrapping ------------------------------------------
 */

var myName: String = "Abhishek"

var myOptionalName: String? = nil

print(myName)
print(myOptionalName ?? "shiva")

// Two ways to unwrap the optional string

// 1. Force unwrapping / Implicit unwrapping
//var name = myName + "/" + myOptionalName!
//print(name)

// 2. Unimplicit unwrapping
if let name = myOptionalName {
    let namee = myName + "/" + name
    print(namee)
}

/*
 ------------------------------------------ Optional Binding ------------------------------------------
 */

var numberString = "123"

if let number = Int(numberString) {
    print("Number is: \(number)")
}
