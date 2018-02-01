import Foundation

/// Boolean, Number, StructuredValue, Text
@objc public protocol Value {}

extension NSNumber: Value {}

extension NSString: Value {}
