import Foundation

fileprivate enum _Gender: String, GenderOrText {
    case female = "Female"
    case male = "Male"
}

/// Gender of the person.
/// While http://schema.org/Male and http://schema.org/Female may be used, text strings are also acceptable for people who do not identify as a binary gender.
@objc public enum Gender: Int, GenderOrText {
    case female
    case male
    
    public init?(stringValue: String) {
        guard let backingEnum = _Gender(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .female: self = .female
        case .male: self = .male
        }
    }
    
    public var stringValue: String {
        switch self {
        case .female: return _Gender.female.rawValue
        case .male: return _Gender.male.rawValue
        }
    }
}
