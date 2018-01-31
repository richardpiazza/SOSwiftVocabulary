import Foundation

fileprivate enum _AccessibilityAPI: String {
    case androidAccessibility = "AndroidAccessibility"
    case aria = "ARIA"
    case atk = "ATK"
    case atSPI = "AT-SPI"
    case blackberryAccessibility = "BlackberryAccessibility"
    case iAccessible2 = "iAccessible2"
    case iOSAccessibility = "iOSAccessibility"
    case javaAccessibility = "JavaAccessibility"
    case macOSXAccessibility = "MacOSXAccessibility"
    case msaa = "MSAA"
    case uiAutomation = "UIAutomation"
}

/// Indicates that the resource is compatible with the referenced accessibility API.
@objc public enum AccessibilityAPI: Int {
    case androidAccessibility
    case aria
    case atk
    case atSPI
    case blackberryAccessibility
    case iAccessible2
    case iOSAccessibility
    case javaAccessibility
    case macOSXAccessibility
    case msaa
    case uiAutomation
    
    public init?(stringValue: String) {
        guard let backingEnum = _AccessibilityAPI(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .androidAccessibility: self = .androidAccessibility
        case .aria: self = .aria
        case .atk: self = .atk
        case .atSPI: self = .atSPI
        case .blackberryAccessibility: self = .blackberryAccessibility
        case .iAccessible2: self = .iAccessible2
        case .iOSAccessibility: self = .iOSAccessibility
        case .javaAccessibility: self = .javaAccessibility
        case .macOSXAccessibility: self = .macOSXAccessibility
        case .msaa: self = .msaa
        case .uiAutomation: self = .uiAutomation
        }
    }
    
    public var stringValue: String {
        switch self {
        case .androidAccessibility: return _AccessibilityAPI.androidAccessibility.rawValue
        case .aria: return _AccessibilityAPI.aria.rawValue
        case .atk: return _AccessibilityAPI.atk.rawValue
        case .atSPI: return _AccessibilityAPI.atSPI.rawValue
        case .blackberryAccessibility: return _AccessibilityAPI.blackberryAccessibility.rawValue
        case .iAccessible2: return _AccessibilityAPI.iAccessible2.rawValue
        case .iOSAccessibility: return _AccessibilityAPI.iOSAccessibility.rawValue
        case .javaAccessibility: return _AccessibilityAPI.javaAccessibility.rawValue
        case .macOSXAccessibility: return _AccessibilityAPI.macOSXAccessibility.rawValue
        case .msaa: return _AccessibilityAPI.msaa.rawValue
        case .uiAutomation: return _AccessibilityAPI.uiAutomation.rawValue
        }
    }
}
