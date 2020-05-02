

/*
 - Factorial
 */

func factorial(n: Int) -> Int {
    if n == 0 { return 1 }
//    print(n)
    let fact = n * factorial(n: n - 1)
    print(fact)
    return fact
}

/*
 - Factorial Using Dynamic Programming
 */

//var factArr = [Int]()
//func dynamicFactorial(n: Int) -> Int {
//    var fact = 0
//    if
//    return fact
//}

print(factorial(n: 100)) // 5*4*3*2*1 = 20*6 = 120

