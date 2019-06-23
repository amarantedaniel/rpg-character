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
}

extension HealthPoints: CustomStringConvertible {
    var description: String {
        "\(current)/\(total)"
    }
}
