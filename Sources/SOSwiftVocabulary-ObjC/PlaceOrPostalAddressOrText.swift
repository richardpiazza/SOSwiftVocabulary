import Foundation

/// Place, PostalAddress, Text
@objc public protocol PlaceOrPostalAddressOrText {}

extension NSString: PlaceOrPostalAddressOrText {}
