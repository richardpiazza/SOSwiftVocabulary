import Foundation

@objc public protocol DistanceConformance:
                    DistanceOrQuantitativeValue
                {}

@objc public protocol Distance: Quantity, DistanceConformance {
    
}
