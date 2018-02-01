import Foundation

/// Integer (Int), Text
@objc public protocol IntegerOrText {}

extension NSNumber: IntegerOrText {}

extension NSString: IntegerOrText {}
