import Foundation

fileprivate enum _ActionStatus: String {
    case active = "ActiveActionStatus"
    case completed = "CompletedActionStatus"
    case failed = "FailedActionStatus"
    case potential = "PotentialActionStatus"
}

/// Indicates the current disposition of the Action.
@objc public enum ActionStatus: Int {
    case active
    case completed
    case failed
    case potential
    
    public init?(stringValue: String) {
        guard let backingEnum = _ActionStatus(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .active: self = .active
        case .completed: self = .completed
        case .failed: self = .failed
        case .potential: self = .potential
        }
    }
    
    public var stringValue: String {
        switch self {
        case .active: return _ActionStatus.active.rawValue
        case .completed: return _ActionStatus.completed.rawValue
        case .failed: return _ActionStatus.failed.rawValue
        case .potential: return _ActionStatus.potential.rawValue
        }
    }
}
