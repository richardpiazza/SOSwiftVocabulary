import Foundation

/// Person, URL
@objc public protocol PersonOrURL {}

extension NSURL: PersonOrURL {}
