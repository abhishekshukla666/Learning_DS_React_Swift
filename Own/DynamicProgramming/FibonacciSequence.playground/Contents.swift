

/*
 -  **Dynamic Programming**
    There are three steps to solve the dynamic programming solution
        1) Recursion
        2) Store (Memoize/Memoization)
        3) Bottom-Up
 */

// Basic Approach: Recursion
var result = 0
//func fib(n: Int) -> Int {
//    if n == 1 || n == 2 { return 1 }
//    else {
//        result = fib(n: n - 1) + fib(n: n - 2)
//    }
//
//    return result
//}

//// Store(Memoize)
//var memo = [Int]()
//func fib(withMemo n: Int) -> Int {
////    if memo.indices.contains(n) {
////        print("Memo Contains: \(memo[n])")
////        return memo[n]
////    }
//    if n == 0 {
//        memo[0] = 0
//        result = 0
//        return result
//    } else if n == 1{
//        print("Here is 1")
//        memo[1] = 1
//        result = 1
//        return result
//    } else if n == 2 {
//        print("Here is 2");
//        memo[2] = 1
//        result = 1
//        return result
//    } else {
//        result = fib(withMemo: n - 1) + fib(withMemo: n - 2)
////        print("Result : \(result)")
//    }
//    print("Value of n: \(n) \t result: \(result)")
////    memo.append(<#T##newElement: Int##Int#>)
////    memo[n - 2] = result
////    print("Memo: \(memo)")
//    return result
//}
//
//print(fib(withMemo: 6))

/*
 Fibonacci Series
 0, 1, 1, 2, 3, 5, 8, 13, 21..
 0  1  2  3  4  5  6  7   8
 */
// Dynamic Programming using loop
func fib(n: Int) -> Int {
    
    var memo = [Int]()
    memo.append(0)
    memo.append(1)
    print(memo)
    if n > 2 {
        for i in 2...n {
            print(i)
            memo.append(memo[i - 1] + memo[i - 2])
            print(memo)
        }
    }
    return memo[n]
}

print(fib(n: 79))
