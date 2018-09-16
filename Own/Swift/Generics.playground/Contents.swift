
/*
 - Generics
 */

func swapGeneric<T>(a: inout T, b: inout T) {
    let temp = a
    a = b
    b = temp
}

func swapTwoGeneric<T,E>(a: inout T, b: inout E) {
    // for two different Generics
}

func compareGeneric<T: Comparable>(a: T, b: T) -> Bool {
    return a == b
}

var x = 10
var y = 20
swapGeneric(a: &x, b: &y)
print("x: \(x) \t y: \(y)")

var s1 = "Abhishek"
var s2 = "Shukla"
swapGeneric(a: &s1, b: &s2)
print("s1: \(s1) \t s2: \(s2)")

compareGeneric(a: s1, b: s2)
