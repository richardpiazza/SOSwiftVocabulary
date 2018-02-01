import Foundation

/// DataFeedItem, Thing, Text
@objc public protocol DataFeedItemOrThingOrText {}

extension NSString: DataFeedItemOrThingOrText {}
