import Foundation

/// ProductModel, Text
@objc public protocol ProductModelOrText {}

extension NSString: ProductModelOrText {}
