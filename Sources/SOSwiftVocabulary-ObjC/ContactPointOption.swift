import Foundation

fileprivate enum _ContactPointOption: String {
    case hearingImparedSupported = "HearingImparedSupported"
    case tollFree = "TollFree"
}

/// Enumerated options related to a ContactPoint
@objc public enum ContactPointOption: Int {
    case hearingImparedSupported
    case tollFree
    
    public init?(stringValue: String) {
        guard let backingEnum = _ContactPointOption(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .hearingImparedSupported: self = .hearingImparedSupported
        case .tollFree: self = .tollFree
        }
    }
    
    public var stringValue: String {
        switch self {
        case .hearingImparedSupported: return _ContactPointOption.hearingImparedSupported.rawValue
        case .tollFree: return _ContactPointOption.tollFree.rawValue
        }
    }
}
