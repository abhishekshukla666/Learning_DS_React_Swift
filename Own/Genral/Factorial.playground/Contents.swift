

/*
 - Factorial
 */

func factorial(n: Int) -> Int {
    if n == 0 { return 1 }
    let fact = n * factorial(n: n - 1)
    return fact
}

print(factorial(n: 5))

