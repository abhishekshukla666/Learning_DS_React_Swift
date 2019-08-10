
struct Rectangle {
    var width = 1
    var height = 1
    
    func area() -> Int {
        return width * height
    }
    
    mutating func scaleBy(value: Int) {
        width *= value
        height *= value
    }
}

//let rectangle = Rectangle(width: 10, height: 10)
var rectangle = Rectangle(width: 10, height: 10)
print(rectangle.area())
print(rectangle.scaleBy(value: 10))
