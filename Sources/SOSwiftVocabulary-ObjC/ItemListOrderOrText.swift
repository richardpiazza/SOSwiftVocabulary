import Foundation

/// ItemListOrder, Text
@objc public protocol ItemListOrderOrText {}

extension NSString: ItemListOrderOrText {}

extension NSNumber: ItemListOrderOrText {}
