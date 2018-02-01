import Foundation

/// Text, Thing
@objc public protocol ThingOrText {}

extension NSString: ThingOrText {}
