import Foundation

/// The business function specifies the type of activity or access (i.e., the bundle of rights) offered by the organization or business person through the offer. Typical are sell, rental or lease, maintenance or repair, manufacture / produce, recycle / dispose, engineering / construction, or installation. Proprietary specifications of access rights are also instances of this class.
public enum BusinessFunction: String {
    case constructionInstallation = "ConstructionInstallation"
    case dispose = "Dispose"
    case leaseOut = "LeaseOut"
    case maintain = "Maintain"
    case provideService = "ProvideService"
    case repair = "Repair"
    case sell = "Sell"
    case buy = "Buy"
}
