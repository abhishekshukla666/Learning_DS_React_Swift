
/*
 - Protocol Oriented Design
 - SuperClass: Animal
 - SubClasses: Aligator, Lion
 */

class Animal {
    
    // Land
    fileprivate var landAnimal = false
    fileprivate var landAttack = false
    fileprivate var landMovement = false
    
    // Sea
    fileprivate var seaAnimal = false
    fileprivate var seaAttack = false
    fileprivate var seaMovement = false
    
    // Air
    fileprivate var airAnimal = false
    fileprivate var airAttack = false
    fileprivate var airMovement = false
    
    // Hit Points: To check weather the animal is alive or not
    fileprivate var hitPoints = 0
}

protocol Name {
    var firstName: String { get set }
    var lastName: String { get set }
}

protocol Age {
    var age: Double { get set }
}

protocol Person: Name, Age {
    var height: Double { get set }
}
