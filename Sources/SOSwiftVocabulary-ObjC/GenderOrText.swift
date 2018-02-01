import Foundation

/// Gender, Text
@objc public protocol GenderOrText {}

extension NSString: GenderOrText {}

extension NSNumber: GenderOrText {}
