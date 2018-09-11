
/*
 - Protocol Types
 */

protocol CustomerProtocol {
    var firstName: String { get set }
    var lastName: String { get set }
//    @objc var fullName: String { get }
    mutating func getFullName() -> String
}

class Person: CustomerProtocol {
    var firstName: String = ""
    var lastName: String = ""
    func getFullName() -> String {
        return firstName + " " + lastName
    }
}



//let shiva = Person()
//shiva.firstName = "Abhishek"
//shiva.lastName = "Shukla"
//print("Hi \(shiva.getFullName())")

/*
 - Practice Question: If there is same method in two implemented 'Protocols'
 */

protocol Plant {
    func printAbout()
}

extension Plant {
    func color() { }
}

protocol Vehical {
    func printAbout()
}

protocol AnotherProtocol: Plant, Vehical {
    func printAbout()
}

class Demo: Plant, Vehical, AnotherProtocol {
    func printAbout() {
        print("Plant")
    }
}
