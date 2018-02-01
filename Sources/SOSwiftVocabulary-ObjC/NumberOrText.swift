import Foundation

/// Number, Text
@objc public protocol NumberOrText {}

extension NSString: NumberOrText {}
