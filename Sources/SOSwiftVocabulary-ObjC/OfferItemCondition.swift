import Foundation

fileprivate enum _OfferItemCondition: String {
    case damanged = "DamagedCondition"
    case new = "NewCondition"
    case refurbished = "RefurbishedCondition"
    case used = "UsedCondition"
}

@objc public enum OfferItemCondition: Int {
    case damanged
    case new
    case refurbished
    case used
    
    public init?(stringValue: String) {
        guard let backingEnum = _OfferItemCondition(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .damanged: self = .damanged
        case .new: self = .new
        case .refurbished: self = .refurbished
        case .used: self = .used
        }
    }
    
    public var stringValue: String {
        switch self {
        case .damanged: return _OfferItemCondition.damanged.rawValue
        case .new: return _OfferItemCondition.new.rawValue
        case .refurbished: return _OfferItemCondition.refurbished.rawValue
        case .used: return _OfferItemCondition.used.rawValue
        }
    }
}
