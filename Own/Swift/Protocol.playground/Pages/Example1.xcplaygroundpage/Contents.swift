
// THIS IS WHERE THE PARADIGM SHIFT STARTS, NOT JUST
// WITH PROTOCOLS, BUT WITH VALUE SEMANTICS

protocol ObjectThatFlies
{
    var flightTerminology: String { get }
    func fly() // no need to provide implementation unless I want
}

extension ObjectThatFlies
{
    func fly() -> Void
    {
        let myType = String(describing: type(of: self))
        let flightTerminologyForType = "Here " + myType + " " + flightTerminology + "\n"
        print(flightTerminologyForType)
    }
}

struct Bird : ObjectThatFlies
{
    var flightTerminology: String = "flies WITH feathers, and flaps wings differently than bats"
}

struct Bat : ObjectThatFlies
{
    var flightTerminology: String = "flies WITHOUT feathers, and flaps wings differently than birds"
}

// VALUE SEMANTICS

let bat = Bat()
bat.fly()
// "Bat flies WITHOUT feathers, and flaps wings differently than birds"

let bird = Bird()
bird.fly()
// "Bird flies WITH feathers, and flaps wings differently than bats"

var batCopy = bat
//batCopy.fly()
// "Bat flies WITHOUT feathers, and flaps wings differently than birds"

// Here, it's obvious what we did to this INSTANCE of Bat...
batCopy.flightTerminology = ""
batCopy.fly()
// just "Bat" prints to console

// BUT, because we're using VALUE semantics, the original
// instance of Bat was not corrupted by side effects
bat.fly()
// "Bat flies WITHOUT feathers, and flaps wings differently than birds"
