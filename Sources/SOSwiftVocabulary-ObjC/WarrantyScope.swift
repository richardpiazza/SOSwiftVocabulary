import Foundation

fileprivate enum _WarrantyScope: String {
    case bringInLabor = "Labor-BringIn"
    case bringInPartsOrLabor = "PartsAndLabor-BringIn"
    case pickupPartsOrLabor = "PartsAndLabor=PickUp"
}

/// A range of of services that will be provided to a customer free of charge in case of a defect or malfunction of a product.
@objc public enum WarrantyScope: Int {
    case bringInLabor
    case bringInPartsOrLabor
    case pickupPartsOrLabor
    
    public init?(stringValue: String) {
        guard let backingEnum = _WarrantyScope(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .bringInLabor: self = .bringInLabor
        case .bringInPartsOrLabor: self = .bringInPartsOrLabor
        case .pickupPartsOrLabor: self = .pickupPartsOrLabor
        }
    }
    
    public var stringValue: String {
        switch self {
        case .bringInLabor: return _WarrantyScope.bringInLabor.rawValue
        case .bringInPartsOrLabor: return _WarrantyScope.bringInPartsOrLabor.rawValue
        case .pickupPartsOrLabor: return _WarrantyScope.pickupPartsOrLabor.rawValue
        }
    }
}
