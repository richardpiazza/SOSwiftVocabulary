import Foundation

@objc public protocol EnumerationConformance:
                    ValueReference
                {}

/// Lists or enumerations—for example, a list of cuisines or music genres, etc.
@objc public protocol Enumeration: Intangible, EnumerationConformance {
    
}
