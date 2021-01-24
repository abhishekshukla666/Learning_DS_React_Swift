
/*
 Object Oriented
 */

enum DrinkSize {
    case ten
    case twenty
    case thirty
}

class Drink_OO {
    var volume: Double
    let caffeine: Double
    var temprature: Double
    let drinkSize: DrinkSize
    var description: String
    
    init(volume: Double, caffeine: Double, temprature: Double, drinkSize: DrinkSize) {
        self.volume = volume
        self.caffeine = caffeine
        self.temprature = temprature
        self.drinkSize = drinkSize
        self.description = "Drink Base class"
    }
    
    func drinking(amount: Double) {
        self.volume -= amount
    }
    
    func temprature(temp: Double) {
        self.temprature += temp
    }
}

class ThumbsUp_OO: Drink_OO {
    override init(volume: Double, caffeine: Double, temprature: Double, drinkSize: DrinkSize) {
        super.init(volume: volume, caffeine: caffeine, temprature: temprature, drinkSize: drinkSize)
        self.description = "Thumbs Up class"
    }
}

class DietCoke_OO: Drink_OO {
    override init(volume: Double, caffeine: Double, temprature: Double, drinkSize: DrinkSize) {
        super.init(volume: volume, caffeine: caffeine, temprature: temprature, drinkSize: drinkSize)
        self.description = "Diet Coke Class"
    }
}

/*
 The first drawback of our design is the initializers of the drink ( ThumbsUp , DietCoke) classes.
 The second drawback to our design is we are using reference types.
 */


/*
 ------------------------------------------------------------------------------------------------------------------------------------
 */




/*
 Protocol Oriented
 */

protocol Drink_PO {
    var volume: Double { get set }
    var caffeine: Double { get set }
    var temprature: Double { get set }
    var drinkSize: DrinkSize { get set }
    var description: String { get set }
}

extension Drink_PO {
    mutating func drinking(amount: Double) {
        self.volume -= amount
    }
    
    mutating func temprature(change: Double) {
        self.temprature += change
    }
}

struct ThumbsUp: Drink_PO {
    var volume: Double
    var caffeine: Double
    var temprature: Double
    var drinkSize: DrinkSize
    var description: String
    
    init(volume: Double, caffeine: Double, temp: Double) {
        self.volume = volume
        self.caffeine = caffeine
        self.temprature = temp
        self.drinkSize = .thirty
        self.description = "Thumbs Up struct"
    }
}

struct DietCoke: Drink_PO {
    var volume: Double
    var caffeine: Double
    var temprature: Double
    var drinkSize: DrinkSize
    var description: String
    
    init(volume: Double, temp: Double, drinkSize: DrinkSize) {
        self.volume = volume
        self.caffeine = 0.0
        self.temprature = temp
        self.drinkSize = drinkSize
        self.description = "Diet Coke struct"
    }
}
