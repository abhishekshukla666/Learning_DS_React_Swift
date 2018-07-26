
import Foundation

struct Player {
    var name: String
    var health: Int
    var energy: Int
    
    static let maxHealth = 10
    func restoreHealth() {
//        health = Player.maxHealth
    }
}

var tendulkar = Player(name: "Sachin", health: Player.maxHealth, energy: 40)
tendulkar.health = 90

print(tendulkar.health)
