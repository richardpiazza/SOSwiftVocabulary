import Foundation

/// CreativeWork, URL
@objc public protocol CreativeWorkOrURL {}

extension NSURL: CreativeWorkOrURL {}
