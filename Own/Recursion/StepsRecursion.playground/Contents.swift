
/*
 - Calculate number of ways to steps over the 0th floor to nth floor
 - using Recursion
 */



func numbWays(n: Int) -> Int {

    if n < 2 { return 1 }
    else if n == 2 { return 2 }
    return numbWays(n: n - 1) + numbWays(n: n - 2) + numbWays(n: n - 3)
}

var numberOfWays = 0
func numbWays(dp n: Int, memo: [Int]) -> Int {
    
    if memo.indices.contains(n) { return memo[n] }
    if n == 0 || n == 1 { return 1 }
    else if n == 2 { return 2 }
    return numbWays(dp: n - 1, memo: memo) + numbWays(dp: n - 2, memo: memo) + numbWays(dp: n - 3, memo: memo)
}

func numbWays(bottomUp n: Int, memo: [Int]) -> Int {
    
    var memo = memo
    if n == 0 {
        return 1
    } else if n == 1 {
        return 1
    } else if n == 2 {
        return 2
    }
    memo.insert(1, at: 0)
    memo.insert(1, at: 1)
    memo.insert(2, at: 2)
    
    for i in 3...n {
        memo.insert(memo[i-1] + memo[i-2] + memo[i-3], at: i)
    }
    return memo[n]
}


var memo = [Int]()
var floor = 3
//print("Number of ways to reach to reach \(floor)th floor: \(numbWays(bottomUp: floor, memo: memo))")
print("Number of ways to reach to reach \(floor)th floor: \(numbWays(dp: floor, memo: memo))")
