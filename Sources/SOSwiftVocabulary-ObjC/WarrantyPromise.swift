import Foundation

/// A structured value representing the duration and scope of services that will be provided to a customer free of charge in case of a defect or malfunction of a product.
@objc public protocol WarrantyPromise: Thing {
    /// The duration of the warranty promise. Common unitCode values are ANN for year, MON for months, or DAY for days.
    var durationOfWarranty: QuantitativeValue? { get set }
    /// The scope of the warranty promise.
    var warrantyScopeRawValue: NSNumber? { get set }
}

public extension WarrantyPromise {
    var warrantyScope: WarrantyScope? {
        get {
            guard let rawValue = warrantyScopeRawValue?.intValue else {
                return nil
            }
            
            return WarrantyScope(rawValue: rawValue)
        }
        set {
            guard let rawValue = newValue?.rawValue else {
                warrantyScopeRawValue = nil
                return
            }
            
            warrantyScopeRawValue = NSNumber(value: rawValue)
        }
    }
}
