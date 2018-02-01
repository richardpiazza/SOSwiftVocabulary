import Foundation

fileprivate enum _PhysicalActivityCategory: String {
    case aerobic = "AerobicActivity"
    case anaerobic = "AnaerobicActivity"
    case balance = "Balance"
    case flexibility = "Flexibility"
    case leisureTime = "LeisureTimeActivity"
    case occupational = "OccupationalActivity"
    case strengthTraining = "StrengthTraining"
}

/// Categories of physical activity, organized by physiologic classification.
@objc public enum PhysicalActivityCategory: Int {
    case aerobic
    case anaerobic
    case balance
    case flexibility
    case leisureTime
    case occupational
    case strengthTraining
    
    public init?(stringValue: String) {
        guard let backingEnum = _PhysicalActivityCategory(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .aerobic: self = .aerobic
        case .anaerobic: self = .anaerobic
        case .balance: self = .balance
        case .flexibility: self = .flexibility
        case .leisureTime: self = .leisureTime
        case .occupational: self = .occupational
        case .strengthTraining: self = .strengthTraining
        }
    }
    
    public var stringValue: String {
        switch self {
        case .aerobic: return _PhysicalActivityCategory.aerobic.rawValue
        case .anaerobic: return _PhysicalActivityCategory.anaerobic.rawValue
        case .balance: return _PhysicalActivityCategory.balance.rawValue
        case .flexibility: return _PhysicalActivityCategory.flexibility.rawValue
        case .leisureTime: return _PhysicalActivityCategory.leisureTime.rawValue
        case .occupational: return _PhysicalActivityCategory.occupational.rawValue
        case .strengthTraining: return _PhysicalActivityCategory.strengthTraining.rawValue
        }
    }
}
