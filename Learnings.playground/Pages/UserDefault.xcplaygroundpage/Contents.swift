//: [Previous](@previous)

import Foundation

class Person: NSObject, NSCoding {
    
    let name: String
    let age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    required init(coder decoder: NSCoder) {
        self.name = decoder.decodeObject(forKey: "name") as? String ?? ""
        self.age = decoder.decodeInteger(forKey: "age")
    }
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey:"name")
        coder.encode(age, forKey:"age")
    }
}

let smith = Person(name: "smith", age: 30)
var people = [Person]()
people.append(smith)

// Encode
//let encodedData = NSKeyedArchiver.archivedData(withRootObject: smith)
//UserDefaults.standard.set(encodedData, forKey: "smith")

// Decode
//if let data = UserDefaults.standard.data(forKey: "smith"){
//    if let smithData = NSKeyedUnarchiver.unarchiveObject(with: data) as? Person {
//        print(smithData.name, smithData.age)
//    }
//}


// Encod
let encodedData = NSKeyedArchiver.archivedData(withRootObject: people)
UserDefaults.standard.set(encodedData, forKey: "People")

// Decode
if let data = UserDefaults.standard.data(forKey: "People"),
    let myPeopleList = NSKeyedUnarchiver.unarchiveObject(with: data) as? [Person] {
    myPeopleList.forEach({print( $0.name, $0.age)})  // Joe 10
} else {
    print("There is an issue")
}










