import Foundation

/// CreativeWork, Product, URL
@objc public protocol CreativeWorkOrProductOrURL {}

extension NSURL: CreativeWorkOrProductOrURL {}
