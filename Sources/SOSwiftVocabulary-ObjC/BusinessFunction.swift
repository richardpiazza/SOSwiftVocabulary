import Foundation

fileprivate enum _BusinessFunction: String {
    case constructionInstallation = "ConstructionInstallation"
    case dispose = "Dispose"
    case leaseOut = "LeaseOut"
    case maintain = "Maintain"
    case provideService = "ProvideService"
    case repair = "Repair"
    case sell = "Sell"
    case buy = "Buy"
}

/// The business function specifies the type of activity or access (i.e., the bundle of rights) offered by the organization or business person through the offer. Typical are sell, rental or lease, maintenance or repair, manufacture / produce, recycle / dispose, engineering / construction, or installation. Proprietary specifications of access rights are also instances of this class.
@objc public enum BusinessFunction: Int {
    case constructionInstallation
    case dispose
    case leaseOut
    case maintain
    case provideService
    case repair
    case sell
    case buy
    
    public init?(stringValue: String) {
        guard let backingEnum = _BusinessFunction(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .constructionInstallation: self = .constructionInstallation
        case .dispose: self = .dispose
        case .leaseOut: self = .leaseOut
        case .maintain: self = .maintain
        case .provideService: self = .provideService
        case .repair: self = .repair
        case .sell: self = .sell
        case .buy: self = .buy
        }
    }
    
    public var stringValue: String {
        switch self {
        case .constructionInstallation: return _BusinessFunction.constructionInstallation.rawValue
        case .dispose: return _BusinessFunction.dispose.rawValue
        case .leaseOut: return _BusinessFunction.leaseOut.rawValue
        case .maintain: return _BusinessFunction.maintain.rawValue
        case .provideService: return _BusinessFunction.provideService.rawValue
        case .repair: return _BusinessFunction.repair.rawValue
        case .sell: return _BusinessFunction.sell.rawValue
        case .buy: return _BusinessFunction.buy.rawValue
        }
    }
}
