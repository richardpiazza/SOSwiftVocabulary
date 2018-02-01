import Foundation

/// A single feed providing structured information about one or more entities or topics.
@objc public protocol DataFeed: Dataset {
    /// An item within in a data feed. Data feeds may have many elements.
    var dataFeedElement: DataFeedItemOrThingOrText? { get set }
}
