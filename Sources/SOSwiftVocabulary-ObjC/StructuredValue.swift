import Foundation

@objc public protocol StructuredValueConformance:
                    Value,
                    ValueReference
                {}

/// Structured values are used when the value of a property has a more complex structure than simply being a textual value or a reference to another thing.
@objc public protocol StructuredValue: Intangible, StructuredValueConformance {
    
}
