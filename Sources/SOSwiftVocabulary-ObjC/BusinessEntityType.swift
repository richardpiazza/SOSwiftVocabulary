import Foundation

fileprivate enum _BusinessEntityType: String {
    case business = "Business"
    case endUser = "Enduser"
    case publicInstitution = "PublicInstitution"
    case reseller = "Reseller"
}

/// A business entity type is a conceptual entity representing the legal form, the size, the main line of business, the position in the value chain, or any combination thereof, of an organization or business person.
@objc public enum BusinessEntityType: Int {
    case business
    case endUser
    case publicInstitution
    case reseller
    
    public init?(stringValue: String) {
        guard let backingEnum = _BusinessEntityType(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .business: self = .business
        case .endUser: self = .endUser
        case .publicInstitution: self = .publicInstitution
        case .reseller: self = .reseller
        }
    }
    
    public var stringValue: String {
        switch self {
        case .business: return _BusinessEntityType.business.rawValue
        case .endUser: return _BusinessEntityType.endUser.rawValue
        case .publicInstitution: return _BusinessEntityType.publicInstitution.rawValue
        case .reseller: return _BusinessEntityType.reseller.rawValue
        }
    }
}
