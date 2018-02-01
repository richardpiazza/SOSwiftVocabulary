import Foundation

@objc public protocol MapConformace:
                    MapOrURL
                {}

/// A map.
@objc public protocol Map: CreativeWork, MapConformace {
    /// Indicates the kind of Map, from the MapCategoryType Enumeration.
    var mapTypeRawValue: NSNumber? { get set }
}

public extension Map {
    var mapType: MapType? {
        get {
            guard let rawValue = mapTypeRawValue?.intValue else {
                return nil
            }
            
            return MapType(rawValue: rawValue)
        }
        set {
            guard let rawValue = newValue?.rawValue else {
                mapTypeRawValue = nil
                return
            }
            
            mapTypeRawValue = NSNumber(value: rawValue)
        }
    }
}
