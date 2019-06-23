import Foundation

enum DangerLevel: Int {
    case safe = 100
    case caution = 40
    case danger = 20
    
    static func levelFor(healthPoints: HealthPoints) -> DangerLevel {
        switch healthPoints.percentage() {
        case 0...20:
            return .danger
        case 0...40:
            return .caution
        default:
            return .safe
        }
    }
}
