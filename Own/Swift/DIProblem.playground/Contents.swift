
/*
 - Why is Inversion of Control required?
 
 The problem here is tight coupling in classes. In other words, "class A depends on class B". Let's take an example and try to understand the tight coupling.
 
 Suppose we have a Samsung class that contains an Android class object. An issue with this is tight coupling between classes. In other words the Samsung class depends on the Android object. So if the Android class changes for any reason then it may affect the Samsung class.
 
 The problem is that the Samsung class controls the creation of the Android object.
 The Android class is directly referenced in the Samsung class that leads to tight coupling among address and customer objects.
 If we make any changes to the Android class then it might affect the Samsung class also, because the Samsung class is dependent on the Android class. Suppose that we add some properties or methods to the Android class then it might require changes in the Samsung class.
 In easier words, this is called Object Dependency. Object Dependency means that, for one object  to work, it needs another object. In other words one object is dependent on another object.
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


