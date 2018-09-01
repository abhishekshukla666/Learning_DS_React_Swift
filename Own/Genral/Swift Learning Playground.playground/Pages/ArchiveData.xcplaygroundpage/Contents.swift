//: [Previous](@previous)

import Foundation

struct Book {
    let name: String
}

let book = Book(name: "Learning Coding")
let archivedData = NSKeyedArchiver.archivedData(withRootObject: book)
UserDefaults.standard.set(archivedData, forKey: "MyBook")

if let data = UserDefaults.standard.object(forKey: "MyBook") as? NSData {
    if let book = NSKeyedUnarchiver.unarchiveObject(with: data as Data) as? Book {
        print(book)
    }
}
