import Foundation

/// GeoShape, Place, Text
@objc public protocol GeoShapeOrPlaceOrText {}

extension NSString: GeoShapeOrPlaceOrText {}
