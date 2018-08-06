//: Playground - noun: a place where people can play

import Foundation

func usingDefer() {
    
    defer {
        print("A")
    }
    defer {
        print("B")
    }
    defer {
        print("C")
    }
    
    return
    defer {
        print("D")
    }
}

usingDefer()
