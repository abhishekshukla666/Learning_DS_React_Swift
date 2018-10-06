
/*
 - Calculate number of ways to steps over the 0th floor to nth floor
 - using Recursion
 */

var numberOfWays = 0
func numbWays(n: Int) -> Int {

    if n == 0 || n == 1 { return 1 }
    return numbWays(n: n - 1) + numbWays(n: n - 2) + 1
}

print("Number of ways to reach to : \(numbWays(n: 3)) floor")
