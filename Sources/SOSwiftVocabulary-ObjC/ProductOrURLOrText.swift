import Foundation

/// Product, Text, URL
@objc public protocol ProductOrURLOrText {}

extension NSString: ProductOrURLOrText {}

extension NSURL: ProductOrURLOrText {}
