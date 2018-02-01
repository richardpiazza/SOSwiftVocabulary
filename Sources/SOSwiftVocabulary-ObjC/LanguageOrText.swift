import Foundation

/// Language, Text
@objc public protocol LanguageOrText {}

extension NSString: LanguageOrText {}
