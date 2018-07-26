//: Playground - noun: a place where people can play

import Foundation

struct User {
    var id: Int
    var name: String
    let password: String
}

class SingleUser {
    static let shared = SingleUser()
    private init() {  }
}

let user = SingleUser.shared
print(user)

