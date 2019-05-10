
/*
 Interface Segregation Principle - Client/User should not be forced to implement protocol that they don't use
 */

/*
 What should not be done
 */

protocol Worker {
    func work()
    func eat()
}

class ManWorker: Worker {
    func work() {
        print("Man worker can work")
    }
    
    func eat() {
        print("Man worker can eat")
    }
}

class WomenWorker: Worker {
    func work() {
        print("Woman worker can work")
    }
    
    func eat() {
        print("Women worker can eat")
    }
}


let man = ManWorker()
man.work()
man.eat()

let women = WomenWorker()
women.work()
women.eat()

struct Robot: Worker {
    func work() {
        print("Robot working... efficiently")
    }
    
    func eat() {
        assert(false, "Dont force me to eat, or i will crash")
    }
}


let robot = Robot()
robot.work()
// robot.eat() /* Will Crqsh */

/*
 What should be done
 */

protocol WorkableR {
    func work()
}

protocol FeedableR {
    func eat()
}

struct ManWorkerR: FeedableR, WorkableR {
    func work() {
        print("Man Worker working...")
    }
    
    func eat() {
        print("Man Worker eating...")
    }
}

struct WomanWorkerR: FeedableR, WorkableR {
    func work() {
        print("Woman Worker working...")
    }
    
    func eat() {
        print("Woman Worker eating...")
    }
}

struct RobotR: WorkableR {
    func work() {
        print("Robot working...")
    }
}

let manR = ManWorkerR()
manR.work()
manR.eat()

let womenR = WomanWorkerR()
womenR.work()
womenR.eat()

let robotR = RobotR()
robotR.work()
//robot.eat() there is no such method.

