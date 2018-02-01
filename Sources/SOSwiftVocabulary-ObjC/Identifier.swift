import Foundation

/// PropertyValue, Text, URL
@objc public protocol Identifier {}

extension NSString: Identifier {}

extension NSURL: Identifier {}
