import Foundation

/// Quantity: Duration (use ISO 8601 duration format).
@objc public protocol Duration {}

extension NSString: Duration {}
