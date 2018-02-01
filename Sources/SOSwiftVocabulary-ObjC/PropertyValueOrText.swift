import Foundation

/// PropertyValue, Text
@objc public protocol PropertyValueOrText {}

extension NSString: PropertyValueOrText {}
