import Foundation

@objc public protocol AdministrativeAreaConformance:
                    AreaServed
                {}

/// A geographical region, typically under the jurisdiction of a particular government.
@objc public protocol AdministrativeArea: Place, AdministrativeAreaConformance {
    
}
