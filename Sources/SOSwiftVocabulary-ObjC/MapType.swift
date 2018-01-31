import Foundation

fileprivate enum _MapType: String {
    case parking = "ParkingMap"
    case seating = "SeatingMap"
    case transit = "TransitMap"
    case venue = "VanueMap"
}

/// An enumeration of several kinds of Map.
@objc public enum MapType: Int {
    case parking
    case seating
    case transit
    case venue
    
    public init?(stringValue: String) {
        guard let backingEnum = _MapType(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .parking: self = .parking
        case .seating: self = .seating
        case .transit: self = .transit
        case .venue: self = .venue
        }
    }
    
    public var stringValue: String {
        switch self {
        case .parking: return _MapType.parking.rawValue
        case .seating: return _MapType.seating.rawValue
        case .transit: return _MapType.transit.rawValue
        case .venue: return _MapType.venue.rawValue
        }
    }
}
