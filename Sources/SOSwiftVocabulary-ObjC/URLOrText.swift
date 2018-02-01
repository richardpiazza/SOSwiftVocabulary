import Foundation

/// Text, URL
@objc public protocol URLOrText {}

extension NSString: URLOrText {}

extension NSURL: URLOrText {}
