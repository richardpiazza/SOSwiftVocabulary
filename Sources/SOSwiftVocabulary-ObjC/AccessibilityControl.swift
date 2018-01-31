import Foundation

fileprivate enum _AccessibilityControl: String {
    case fullKeyboardControl = "fullKeyboardControl"
    case fullMouseControl = "fullMouseControl"
    case fullSwitchControl = "fullSwitchControl"
    case fullTouchControl = "fullTouchControl"
    case fullVideoControl = "fullVideoControl"
    case fullVoiceControl = "fullVoiceControl"
}

/// Identifies one or more input methods that allow access to all of the application functionality.
@objc public enum AccessibilityControl: Int {
    case fullKeyboardControl
    case fullMouseControl
    case fullSwitchControl
    case fullTouchControl
    case fullVideoControl
    case fullVoiceControl
    
    public init?(stringValue: String) {
        guard let backingEnum = _AccessibilityControl(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .fullKeyboardControl: self = .fullKeyboardControl
        case .fullMouseControl: self = .fullMouseControl
        case .fullSwitchControl: self = .fullSwitchControl
        case .fullTouchControl: self = .fullTouchControl
        case .fullVideoControl: self = .fullVideoControl
        case .fullVoiceControl: self = .fullVoiceControl
        }
    }
    
    public var stringValue: String {
        switch self {
        case .fullKeyboardControl: return _AccessibilityControl.fullKeyboardControl.rawValue
        case .fullMouseControl: return _AccessibilityControl.fullMouseControl.rawValue
        case .fullSwitchControl: return _AccessibilityControl.fullSwitchControl.rawValue
        case .fullTouchControl: return _AccessibilityControl.fullTouchControl.rawValue
        case .fullVideoControl: return _AccessibilityControl.fullVideoControl.rawValue
        case .fullVoiceControl: return _AccessibilityControl.fullVoiceControl.rawValue
        }
    }
}
