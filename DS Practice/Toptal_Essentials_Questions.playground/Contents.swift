/*
 1st
 */
struct Planet {
    let name: String
    let distanceFromSun: Double
    let distanceFromEarth: Double
}

let planets = [
    Planet(name: "Mercury", distanceFromSun: 0.387, distanceFromEarth: 1.12),
    Planet(name: "Venus", distanceFromSun: 0.722, distanceFromEarth: 2.12),
    Planet(name: "Earth", distanceFromSun: 1.0, distanceFromEarth: 3.12),
    Planet(name: "Mars", distanceFromSun: 1.52, distanceFromEarth: 4.12),
    Planet(name: "Jupiter", distanceFromSun: 5.20, distanceFromEarth: 5.12),
    Planet(name: "Saturn", distanceFromSun: 9.58, distanceFromEarth: 6.12),
    Planet(name: "Uranus", distanceFromSun: 19.2, distanceFromEarth: 7.12),
    Planet(name: "Neptune", distanceFromSun: 30.1, distanceFromEarth: 8.12)
]

let result1 = planets.map { $0.name }
let result2 = planets.reduce(0) { $0 + $1.distanceFromEarth }
//print("Result 1 \t", result1)
//print("Result 2 \t", result2)

/*
 2nd
 */
enum IntEnum : Int {
    case ONE = 1
    case TWO = 2
    case THREE = 3
}
var enumVar: IntEnum = IntEnum.TWO
var rawValue: Int = enumVar.rawValue
//print("Enum Value: \t", enumVar)
//print("Raw Value: \t", rawValue)

enum AssociatedEnum {
    case EMPTY
    case WITH_INT(value: Int)
    case WITH_TUPLE(value: Int, text: String, data: [Float])
}

//print("Raw Value: \t", AssociatedEnum.EMPTY)

/*
 3rd
 */
var array = [Any]()
array.append(1)
array.append(2.0)
array.append("3")
array.append([4, 5, 6])
array.append([7: "7", 8: "8"])

struct Test {}
array.append(Test())
//print("Array: \t", array)

/*
 4th
 */

class Master {
    lazy var detail: Detail = Detail(master: self)
    
    init() {
        print("init Master")
    }
    
    deinit {
        print("deinit master")
    }
}

class Detail {
    unowned var master: Master
    
    init(master: Master) {
        print("init detail")
        self.master = master
    }
    deinit {
        print("deinit detail")
    }
}

//var master = Master()
//var detail = master.detail

/*
 5th
 */

struct IntStack {
  var items = [Int]()
    mutating func add(x: Int) {
    items.append(x) // Compile time error here.
  }
}

/*
 6th
 */
let d = ["john": 23, "james": 24, "vincent": 34, "louis": 29]
let x = d.sorted{ $0.1 < $1.1 }.map{ $0.1 }
print("x: \t", x)
