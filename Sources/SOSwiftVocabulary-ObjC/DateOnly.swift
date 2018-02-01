import Foundation

@objc public protocol DateOnlyConformance:
                    DateOnlyOrDateTime
                {}

/// A date value in ISO 8601 date format.
@objc public protocol DateOnly: DateOnlyConformance {}

extension NSString: DateOnly {}
