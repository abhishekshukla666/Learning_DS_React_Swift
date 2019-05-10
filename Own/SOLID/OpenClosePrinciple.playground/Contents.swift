
/*
 Open Close Principle - Class/Module/Function should be open for extension but close for modification.
 In Other Term, Write code that doesn't have to changed every time when requirment changes.
 */

/*
 What should not be done
 */
import Foundation
class Rectangle {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}

class Circle {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
}

class AreaCalculator {
    
    var area = 0.0
    func area(rectangle: Rectangle) -> Double {
        area = rectangle.width * rectangle.height
        return area
    }
    
    func area(circle: Circle) -> Double {
        area = circle.radius * circle.radius * Double.pi
        return area
    }
}

let rect = Rectangle(width: 10, height: 20)
let circle = Circle(radius: 10)
let rectAreaCal = AreaCalculator().area(rectangle: rect)
let circleAreaCal = AreaCalculator().area(circle: circle)
print(rectAreaCal)
print(circleAreaCal)

/*
 What should we do
 */

protocol Shape {
    func area() -> Double
}

class RectangleR: Shape {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    func area() -> Double {
        return width * height
    }
}

class CircleR: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return radius * radius * Double.pi
    }
}

let rectR = RectangleR(width: 10, height: 20)
let circleR = CircleR(radius: 10)
print("R", rectR.area())
print("C", circleR.area())

