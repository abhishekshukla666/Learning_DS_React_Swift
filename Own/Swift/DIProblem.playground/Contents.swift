
/*
 - Why is Inversion of Control required?
 - Here is the problem
 */

class Android {
    
    var androidVersion: String
    var internalMemory: Int
    
    init(androidVersion: String, internalMemory: Int) {
        self.androidVersion = androidVersion
        self.internalMemory = internalMemory
    }
}

class Samsung {
    var mobileName: String
    var android: Android
    
    init(mobileName: String, androidVersion: String, internalMemory: Int) {
        
        /*
         - Tightly coupled, here we are creating android object inside the samsung class
         */
        let android = Android(androidVersion: androidVersion, internalMemory: internalMemory)
        self.mobileName = mobileName
        self.android = android
    }
    
    func samsungString() -> String {
        return String(describing: mobileName + " " + android.androidVersion)
    }
}

let samsung = Samsung(mobileName: "Galaxy Grand", androidVersion: "Jelly Bean", internalMemory: 16)
samsung.samsungString()


