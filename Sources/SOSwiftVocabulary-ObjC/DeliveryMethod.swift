import Foundation

fileprivate enum _DeliveryMethod: String {
    case directDownload = "DeliveryModeDirectDownload"
    case frieght = "DeliveryModeFrieght"
    case mail = "DeliveryModeMail"
    case ownFleet = "DeliveryModeOwnFleet"
    case pickUp = "DeliveryModePickUp"
    case dhl = "DHL"
    case federalExpress = "FederalExpress"
    case ups = "UPS"
}

/// A delivery method is a standardized procedure for transferring the product or service to the destination of fulfillment chosen by the customer. Delivery methods are characterized by the means of transportation used, and by the organization or group that is the contracting party for the sending organization or person.
@objc public enum DeliveryMethod: Int {
    case directDownload
    case frieght
    case mail
    case ownFleet
    case pickUp
    case dhl
    case federalExpress
    case ups
    
    public init?(stringValue: String) {
        guard let backingEnum = _DeliveryMethod(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .directDownload: self = .directDownload
        case .frieght: self = .frieght
        case .mail: self = .mail
        case .ownFleet: self = .ownFleet
        case .pickUp: self = .pickUp
        case .dhl: self = .dhl
        case .federalExpress: self = .federalExpress
        case .ups: self = .ups
        }
    }
    
    public var stringValue: String {
        switch self {
        case .directDownload: return _DeliveryMethod.directDownload.rawValue
        case .frieght: return _DeliveryMethod.frieght.rawValue
        case .mail: return _DeliveryMethod.mail.rawValue
        case .ownFleet: return _DeliveryMethod.ownFleet.rawValue
        case .pickUp: return _DeliveryMethod.pickUp.rawValue
        case .dhl: return _DeliveryMethod.dhl.rawValue
        case .federalExpress: return _DeliveryMethod.federalExpress.rawValue
        case .ups: return _DeliveryMethod.ups.rawValue
        }
    }
}
