import Foundation

struct HealthPoints {
    var current: Int
    var total: Int
    
    mutating func increment() {
        if current + 1 <= total {
            current += 1
        }
    }
    
    mutating func decrement() {
        if current - 1 >= 0  {
            current -= 1
        }
    }
    
    func percentage() -> Int {
        return current * 100 / total
    }
    
    func dangerLevel() -> DangerLevel {
        return DangerLevel.levelFor(healthPoints: self)
    }
    
    func isInDanger() -> Bool {
        return current <= total * 30 / 100
    }
}

extension HealthPoints: CustomStringConvertible {
    var description: String {
        "\(current)/\(total)"
    }
}
