import Foundation
import UIKit

/*
 ------------------------ (KVO) KeyValueObserving & (KVC) KeyValueCoding ------------------------
 */

class User: NSObject {

    dynamic var userName: String!
    init(userName: String) {
        super.init()
        self.userName = userName
    }
}

private var myContext = 0
class UserManager: NSObject {

    var user: User
    init(withUser user: User) {
        self.user = user
        super.init()

        user.addObserver(self, forKeyPath: #keyPath(User.userName), options: .new, context: &myContext)
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if context == &myContext {
            if let changedName = change?[.newKey]! as? String {
                print("Value has changed to \(changedName)")
            }
        }
    }
}

let user = User(userName: "Abhishek")

let userManager = UserManager(withUser: user)
user.userName = "Abhishek"


