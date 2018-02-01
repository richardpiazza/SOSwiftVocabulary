import Foundation

@objc public protocol NumberConformance:
                    Value,
                    NumberOrText
                {}

/// Integer (Int), Float (Double)
@objc public protocol Number: NumberConformance {}

extension NSNumber: Number {}

