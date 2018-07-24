import Foundation
/*
 ------------------------------------------ Retain Cycle ------------------------------------------
 */

class Animal {
    
    var name: String = ""
    
    init(name: String) {
        self.name = name
    }
    
    /*
     Clouser Retain Cycle
     */
    lazy var color: ()-> String = { [weak self] in
        guard let this = self else { return "" }
        return "\(this.name) color is red"
    }
    
    deinit {
        print("\(name) deinit called")
    }
}

class Dog{
    
    /*
     Class Reference Retain Cycle
     */
    weak var animal: Animal?
    init(animal: Animal) {
        self.animal = animal
    }
    
    deinit {
        print("dog deinit called")
    }
}

var animal: Animal? = Animal(name: "Tommy")
animal?.color()

var dog: Dog? = Dog(animal: animal!)
//dog.animal = animal

animal = nil
dog = nil

