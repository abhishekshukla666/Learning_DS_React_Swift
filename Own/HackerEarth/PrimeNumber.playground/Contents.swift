
/*
 - You are given an integer N. You need to print the series of all prime numbers till N.
 
 Input Format
 
 The first and only line of the input contains a single integer N denoting the number till where you need to find the series of prime number.
 
 Output Format
 
 Print the desired output in single line separated by spaces.
 
 Constraints
 
 1<=N<=1000
 
 */

func printPrimeNumber(till number: Int) {
    
    for n in 2..<number {
        
        if isPrime(number: n) {
            print(n, terminator: " ")
        }
    }
}

func isPrime(number: Int) -> Bool {
    
    if number <= 1 { return false }
    
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

printPrimeNumber(till: 234)
