//: [Previous](@previous)

import Foundation

func printSums(_ N: Int) {
    var start = 1
    var end = 1
    var sum = 1

    while start <= N/2 {
        if (sum < N) {
            end = end + 1
            sum = sum + end
        } else if (sum > N) {
            sum = sum - start
            start = start + 1
        } else if (sum == N) {
            for index in start..<end {
                print(index)
            }
            print("\n")
            sum = sum - start
            start = start + 1
        }
    }
}

print(0 % 3)

