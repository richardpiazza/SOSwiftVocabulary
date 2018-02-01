import Foundation

/// DateTime, Text, URL
@objc public protocol DateTimeOrURLOrText {}

extension NSString: DateTimeOrURLOrText {}

extension NSURL: DateTimeOrURLOrText {}
