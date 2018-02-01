import Foundation

/// ImageObject, URL
@objc public protocol ImageObjectOrURL {}

extension NSURL: ImageObjectOrURL {}
