

/*
 -  **Dynamic Programming**
    There are three steps to solve the dynamic programming solution
        1) Recursion
        2) Store (Memoize/Memoization)
        3) Bottom-Up
 */

// Basic Approach: Recursion
//var result = 0
//func fib(n: Int) -> Int {
//    if n == 1 || n == 2 { return 1 }
//    else {
//        result = fib(n: n - 1) + fib(n: n - 2)
//    }
//
//    return result
//}

// Store(Memoize)
extension MutableCollection {
    subscript(safe index: Index) -> Element? {
        get {
            return indices.contains(index) ? self[ index] : nil
        }
        
        set(newValue) {
            if let newValue = newValue, indices.contains(index) {
                self[ index] = newValue
            }
        }
    }
}


/*
 - Fibonacci Series -> 0 1 1 2 3 5 8 13 21
         position   -> 0 1 2 3 4 5 6  7  8
 */
var memo : [Int] = []
memo.insert(0, at: 0)
memo.insert(1, at: 1)
memo.insert(1, at: 2)

//print(memo)
var result = 0
func fib(at position: Int) -> Int {

    guard position > 1 else { return position }
    if memo[safe: position] != nil {
        print("Memo is there: ", memo[position])
        return memo[position]
    }
    if position == 1 {
//        memo.insert(1, at: 1)
        result = 1
    } else if position == 2 {
//        memo.insert(1, at: 2)
        result = 1
    } else {
        result = fib(at: position - 1) + fib(at: position - 2)
        memo.insert(result, at: position)
    }

    print(memo)
    return result
}

fib(at: 8)

/*
 Fibonacci Series
 0, 1, 1, 2, 3, 5, 8, 13, 21..
 0  1  2  3  4  5  6  7   8
 */
// Dynamic Programming using loop
//func fib(n: Int) -> Int {
//
//    var memo = [Int]()
//    memo.append(0)
//    memo.append(1)
//    print(memo)
//    if n > 2 {
//        for i in 2...n {
//            print(i)
//            memo.append(memo[i - 1] + memo[i - 2])
//            print(memo)
//        }
//    }
//    return memo[n]
//}
//
//print(fib(n: 8))



