import Foundation

struct DeathSaves {
    var success = 0
    var failure = 0
    
    
    private mutating func update(modifier: Int, type: DeathSaveType) {
        switch type {
        case .success:
            if 0...3 ~= success + modifier {
                success += modifier
            }
        case .failure:
            if 0...3 ~= failure + modifier {
                failure += modifier
            }
        }
    }
    
    mutating func increment(type: DeathSaveType) {
        update(modifier: 1, type: type)
    }
    
    mutating func decrement(type: DeathSaveType) {
        update(modifier: -1, type: type)
    }
}

enum DeathSaveType {
    case success
    case failure
}
