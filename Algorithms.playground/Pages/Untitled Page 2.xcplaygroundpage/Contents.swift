//: [Previous](@previous)

import Foundation


func divmod(_ a: Int, _ b:Int) -> (quotient: Int, remainder: Int, arr: Int) {
    var list = [Int]()
    list.append(a)
    list.append(b)
    return (a / b, a % b, list.count)
}

print(divmod(7, 3))
print(divmod(5, 2))
print(divmod(12, 4))

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)
// returns 10.0, which is the arithmetic mean of these three numbers
