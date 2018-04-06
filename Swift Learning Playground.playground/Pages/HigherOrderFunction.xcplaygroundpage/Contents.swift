
import Foundation

//var array1 = [1, 2 , 3, 4]
//var array2 = array1
//array2.append(5)
//print(array1.count)

//var array = [AnyObject]()
//struct Person {}
//array.append(Person() as AnyObject)
//array.append(Int(1) as AnyObject)
//array.append(Double(2.0) as AnyObject)
//array.append(String("3") as AnyObject)

struct Planet {
    var name: String
    var distanceFromSun: Double
}

let planet = [
    Planet(name: "Mercury", distanceFromSun: 1.0),
    Planet(name: "Venus", distanceFromSun: 2.0),
    Planet(name: "Earth", distanceFromSun: 3.0),
    Planet(name: "Mars", distanceFromSun: 4.0),
    Planet(name: "Jupiter", distanceFromSun: 5.0),
    Planet(name: "Saturn", distanceFromSun: 6.0),
    Planet(name: "Uranus", distanceFromSun: 7.0)
]

let result1 = planet.map { $0.name }
let result2 = planet.reduce(1) { $0 + $1.distanceFromSun }
print(result1)
print(result2)


