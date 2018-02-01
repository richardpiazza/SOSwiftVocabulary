import Foundation

/// PostalAddress, Text
@objc public protocol PostalAddressOrText {}

extension NSString: PostalAddressOrText {}
