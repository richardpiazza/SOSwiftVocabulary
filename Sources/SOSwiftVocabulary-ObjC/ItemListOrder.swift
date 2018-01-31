import Foundation

fileprivate enum _ItemListOrder: String, ItemListOrderOrText {
    case ascending = "ItemListOrderAscending"
    case decending = "ItemListOrderDescending"
    case unordered = "ItemListUnordered"
}

/// Enumerated for values for itemListOrder for indicating how an ordered ItemList is organized.
@objc public enum ItemListOrder: Int, ItemListOrderOrText {
    case ascending
    case decending
    case unordered
    
    public init?(stringValue: String) {
        guard let backingEnum = _ItemListOrder(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .ascending: self = .ascending
        case .decending: self = .decending
        case .unordered: self = .unordered
        }
    }
    
    public var stringValue: String {
        switch self {
        case .ascending: return _ItemListOrder.ascending.rawValue
        case .decending: return _ItemListOrder.decending.rawValue
        case .unordered: return _ItemListOrder.unordered.rawValue
        }
    }
}
