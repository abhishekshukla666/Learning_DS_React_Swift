
/*
 -Dependency Injection
 
 To solve the problem of tight coupling here we have an easier and simpler way, "Inversion of Control" (IOC).
 
 In more simple words Inversion of Control could be defined as: "delegation of a task of object's creation to a third party, to do low coupling between objects and to minimize dependency between objects".
 
 
 There are two points related to IOC:
 The main class shouldn't be dependent on another class. Both classes should be dependent on abstraction.
 Abstraction could be done through an interface or abstract class.
 This is the basic concept for implementing the Inversion of Control (IOC) pattern.
 It wipes out tight coupling between objects.
 Makes objects and application more flexible.
 It facilitates creating more loosely coupled objects and their dependencies.
 
 */

// Step 1
protocol IMobile {
    
    func description() -> String
}

// Step 2: Implement an interface to the Android class. An object of the Android class references the Samsung class
class Android: IMobile {
    
    var androidVersion: String
    var internalMemory: Int
    
    init(androidVersion: String, internalMemory: Int) {
        self.androidVersion = androidVersion
        self.internalMemory = internalMemory
    }
    
    func description() -> String {
        return String(describing: "Version is having internal memory: \(androidVersion) \(internalMemory)")
    }
}

// Step 3: Make a reference of the interface in the Samsung class
class Samsung {
    var mobileName: String
    var iMobile: IMobile
    
    init(mobileName: String, iMobile: IMobile) {
        self.mobileName = mobileName
        self.iMobile = iMobile
    }
    
    func description() -> String {
        return self.mobileName
    }
}

// Step 4: Create a third party class, that creates an instance of all these objects
class IOC {
    var iMobile: IMobile? = nil
    var samsung: Samsung? = nil
    
    func assesmbling() {
        iMobile = Android(androidVersion: "Jelly Bean", internalMemory: 16)
        samsung = Samsung(mobileName: "Galaxy Grand", iMobile: iMobile!)
    }
    
    func description() -> String {
        return "Mobile Name: \(samsung?.description()) and \(iMobile?.description())"
    }
}

// Step 5: Use this third party class at the client side.
let ioc = IOC()
ioc.assesmbling()
ioc.description()
