

// MARK: Enums
enum CompassPoint:Character {
    case north = "n"
    case south = "s"
    case east = "e"
    case west = "w"
}
let point = CompassPoint.east.rawValue
//print(point)

//class Fruits {
//    var name:String?
//    var color:String! = ""
//}

//var furitsObje = Fruits()
//furitsObje.color = nil
//furitsObje.name = nil
//print(furitsObje.color)

/*---------------------------------------------------------------*/

//MARK: Initialization

struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}

let animal = Animal(species: "Giraffe")
//print("\(animal?.species)" ?? "Animal object is nil!")

/*---------------------------------------------------------------*/

//MARK: Optional Chaining

class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()
john.residence = Residence()
let roomCount = john.residence?.numberOfRooms
//print("\(roomCount)")


/*---------------------------------------------------------------*/

//MARK: Collection Type

var letters = Set<Character>()
letters.insert("a")
letters.insert("a")
print(letters.count)

var favouriteGenres: Set<String> = ["a", "b", "c", "a", "0"]
//print(favouriteGenres.count)


//MARK: Insertion Sort
var numberArr = [33, 23, 12, 88, 90, 56]

let numberSorted = numberArr.sorted()
numberSorted



func oddNumbers(l: Int, r: Int) -> [Int] {
    var oddNumbers = [Int]()
    for number in l...r {
        if number%2 != 0{
            oddNumbers.append(number)
        }
    }
    return oddNumbers
}


//print(oddNumbers(l: 3, r: 9))


func findNumber(arr: [Int], k: Int) -> String {
    
    for number in arr {
        if k == number {
            return "YES"
        }
    }
    return "NO"
}

//print(findNumber(arr: [2, 3, 1], k: 3))

var option1: String? = nil
var option2: String? = .none

public class ThermometerClass {
    private(set) var temperature: Double = 0.0
    public func registerTemperature(temperature: Double) {
        self.temperature = temperature
    }
}

let thermometerClass = ThermometerClass()
thermometerClass.registerTemperature(temperature: 65.0)


//extension Array where Element: Comparable {
//    func countUniques<T: Comparable>() -> Int {
//        let sorted = sorted { (value1, value2) -> Bool in
//            return value1 < value2
//        }
//        let initial: (T?, Int) = (.none, 0)
//        let reduced = sorted.reduce(initial) { ($1, $0.0 == $1 ? $0.1 : $0.1 + 1) }
//        return reduced.1
//    }
//}
//
//let numberArray = [1, 2, 3, 3]
//numberArray.countUniques()




