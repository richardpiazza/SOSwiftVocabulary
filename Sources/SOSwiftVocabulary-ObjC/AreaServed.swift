import Foundation

/// AdministrativeArea, GeoShape, Place, Text
@objc public protocol AreaServed {}

extension NSString: AreaServed {}
