import Foundation

fileprivate enum _Interactivity: String {
    case active = "active"
    case expositive = "expositive"
    case mixed = "mixed"
}

@objc public enum Interactivity: Int {
    case active
    case expositive
    case mixed
    
    public init?(stringValue: String) {
        guard let backingEnum = _Interactivity(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .active: self = .active
        case .expositive: self = .expositive
        case .mixed: self = .mixed
        }
    }
    
    public var stringValue: String {
        switch self {
        case .active: return _Interactivity.active.rawValue
        case .expositive: return _Interactivity.expositive.rawValue
        case .mixed: return _Interactivity.mixed.rawValue
        }
    }
}
