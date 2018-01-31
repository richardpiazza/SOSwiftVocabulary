import Foundation

fileprivate enum _ItemAvailability: String {
    case discontinued = "Discontinued"
    case inStock = "InStock"
    case inStoreOnly = "InStoreOnly"
    case limitedAvailability = "LimitedAvailability"
    case onlineOnly = "OnlineOnly"
    case outOfStock = "OutOfStock"
    case preOrder = "PreOrder"
    case preSale = "PreSale"
    case soldOut = "SoldOut"
}

/// A list of possible product availability options.
@objc public enum ItemAvailability: Int {
    case discontinued
    case inStock
    case inStoreOnly
    case limitedAvailability
    case onlineOnly
    case outOfStock
    case preOrder
    case preSale
    case soldOut
    
    public init?(stringValue: String) {
        guard let backingEnum = _ItemAvailability(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .discontinued: self = .discontinued
        case .inStock: self = .inStock
        case .inStoreOnly: self = .inStoreOnly
        case .limitedAvailability: self = .limitedAvailability
        case .onlineOnly: self = .onlineOnly
        case .outOfStock: self = .outOfStock
        case .preOrder: self = .preOrder
        case .preSale: self = .preSale
        case .soldOut: self = .soldOut
        }
    }
    
    public var stringValue: String {
        switch self {
        case .discontinued: return _ItemAvailability.discontinued.rawValue
        case .inStock: return _ItemAvailability.inStock.rawValue
        case .inStoreOnly: return _ItemAvailability.inStoreOnly.rawValue
        case .limitedAvailability: return _ItemAvailability.limitedAvailability.rawValue
        case .onlineOnly: return _ItemAvailability.onlineOnly.rawValue
        case .outOfStock: return _ItemAvailability.outOfStock.rawValue
        case .preOrder: return _ItemAvailability.preOrder.rawValue
        case .preSale: return _ItemAvailability.preSale.rawValue
        case .soldOut: return _ItemAvailability.soldOut.rawValue
        }
    }
}
