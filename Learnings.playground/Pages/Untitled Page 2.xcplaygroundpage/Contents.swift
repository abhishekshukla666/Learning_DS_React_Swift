////: [Previous](@previous)
//
//import Foundation
//import UIKit
//
//class VC: UIViewController{
//    
//}
//
//class MyView: UIView {
//    override func awakeFromNib() {
//        super.awakeFromNib()
//    }
//}
////enum CustomType {
////    case a
////    case b
////}
////
////let type:CustomType
////type = .a
////
////var type2: CustomType
////type2 = .b
////type2 = type
////
////print(type2)
//
////struct Animal {
////    let name: String?
////}
////
////let dog = Animal(name: "Dog")
////let cat = Animal(name: "cat")
////
////var animalList = [dog, cat]
////if animalList.count > 0 {
////    for (index, animal) in animalList.enumerated() {
////        print(index)
////        print(animal.name!)
////    }
////}
//
//let animals = ["tiger", "cat", "lion", "pickock", "dog"]
//let sortedAnimals = animals.sorted { (one, two) -> Bool in return one < two }
//let sortAnimal = animals.sorted { (one, two) in return one < two }
//let soAnimal = animals.sorted { $0 < $1 }
//
////print(sortedAnimals)
////print(sortAnimal)
////print(soAnimal)
//
//func divide(dividend: Double?, by divisor: Double?) -> Double? {
//    guard let dividend = dividend, let divisor = divisor, divisor != 0 else {
//        return .none
//    }
//    return dividend / divisor
//}
//
//let value = divide(dividend: 0.0, by: 0.0)
////print(value)
//
//
//public struct ThermometerClass {
//    private(set) var temperature: Double?
//    public mutating func registerTemperature(temperature: Double?) {
//        self.temperature = temperature
//    }
//}
//
//let thermometerClass = ThermometerClass(temperature: 56.0)
////thermometerClass.registerTemperature(temperature: 56.0)
//print(thermometerClass.temperature ?? 0.0)
//
//
//let carList = ["volswegon", "mahindra", "apolo", "suzuki", "mercedees"]
//
//
//
//
//
