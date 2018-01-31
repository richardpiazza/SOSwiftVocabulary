import Foundation

fileprivate enum _AccessModeSufficient: String {
    case auditory = "auditory"
    case tactile = "tactile"
    case textual = "textual"
    case visual = "visual"
}

/// A list of single or combined accessModes that are sufficient to understand all the intellectual content of a resource.
@objc public enum AccessModeSufficient: Int {
    case auditory
    case tactile
    case textual
    case visual
    
    public init?(stringValue: String) {
        guard let backingEnum = _AccessModeSufficient(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .auditory: self = .auditory
        case .tactile: self = .tactile
        case .textual: self = .textual
        case .visual: self = .visual
        }
    }
    
    public var stringValue: String {
        switch self {
        case .auditory: return _AccessModeSufficient.auditory.rawValue
        case .tactile: return _AccessModeSufficient.tactile.rawValue
        case .textual: return _AccessModeSufficient.textual.rawValue
        case .visual: return _AccessModeSufficient.visual.rawValue
        }
    }
}
