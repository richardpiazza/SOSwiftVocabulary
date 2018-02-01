import Foundation

/// Country, Text
@objc public protocol CountryOrText {}

extension NSString: CountryOrText {}
