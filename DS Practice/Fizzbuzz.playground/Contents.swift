

/*
 Multiple of three          -> Print("Fizz")
 Multiple of five           -> print("Buzz")
 Multiple of three & five   -> print("FizzBuzz")
 */

func fizzBuzz(number: Int) {
    
    if number % 3 == 0 && number % 5 == 0 {
        print("FizzBuzz")
    } else if number % 3 == 0 {
        print("Fizz")
    } else if number % 5 == 0 {
        print("Buzz")
    }
}

fizzBuzz(number: 30)


/*
 Fibonacci numbers      -> 0 1 1 2 3 5 8 13 21
 */

func fibonacciSeries(number: Int) -> Int {
    if number < 2 {
        return number
    }
    return fibonacciSeries(number: number - 1) + fibonacciSeries(number: number - 2)
}

fibonacciSeries(number: 8)
