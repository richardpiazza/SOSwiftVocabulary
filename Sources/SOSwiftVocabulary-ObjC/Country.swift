import Foundation

@objc public protocol CountryConformance:
                    CountryOrText
                {}

/// A country.
@objc public protocol Country: AdministrativeArea, CountryConformance {
    
}
