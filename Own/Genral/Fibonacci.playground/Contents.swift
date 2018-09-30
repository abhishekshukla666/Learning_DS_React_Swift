
/*
 - Fibanacci Sequence
 1, 1, 2, 3, 5, 8, 13, 21, 34
 n + (n + 1)
 */

func fibonacci(n: Int) -> Int {
    if n == 1 || n == 2 { return 1 }
    let sum = fibonacci(n: n - 1) + fibonacci(n: n - 2)
    return sum
}

print(fibonacci(n: 9))
