import Foundation

fileprivate enum _EventStatus: String {
    case cancelled = "EventCancelled"
    case postponed = "EventPostponed"
    case rescheduled = "EventRescheduled"
    case scheduled = "EventScheduled"
}

/// An eventStatus of an event represents its status; particularly useful when an event is cancelled or rescheduled.
@objc public enum EventStatus: Int {
    case cancelled
    case postponed
    case rescheduled
    case scheduled
    
    public init?(stringValue: String) {
        guard let backingEnum = _EventStatus(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .cancelled: self = .cancelled
        case .postponed: self = .postponed
        case .rescheduled: self = .rescheduled
        case .scheduled: self = .scheduled
        }
    }
    
    public var stringValue: String {
        switch self {
        case .cancelled: return _EventStatus.cancelled.rawValue
        case .postponed: return _EventStatus.postponed.rawValue
        case .rescheduled: return _EventStatus.rescheduled.rawValue
        case .scheduled: return _EventStatus.scheduled.rawValue
        }
    }
}
