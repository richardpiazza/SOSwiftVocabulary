import Foundation

fileprivate enum _AccessibilityHazard: String {
    case flashing = "flashing"
    case noFlashingHazard = "noFlashingHazard"
    case motionSimulation = "motionSimulation"
    case noMotionSimulation = "noMotionSimulation"
    case sound = "sound"
    case noSoundHazard = "noSoundHazard"
    case unknown = "unknown"
}

/// A characteristic of the described resource that is physiologically dangerous to some users. Related to WCAG 2.0 guideline 2.3.
/// All three of the negative properties should be set if none of the hazards are known to exist. 
/// If the content has hazard(s), include positive assertions for the hazards it has and negative assertions for the others.
/// If the property is not set in the positive or negative or is specifically set to unknown, the state of hazards is not known.
@objc public enum AccessibilityHazard: Int {
    case flashing
    case noFlashingHazard
    case motionSimulation
    case noMotionSimulation
    case sound
    case noSoundHazard
    case unknown
    
    public init?(stringValue: String) {
        guard let backingEnum = _AccessibilityHazard(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .flashing: self = .flashing
        case .noFlashingHazard: self = .noFlashingHazard
        case .motionSimulation: self = .motionSimulation
        case .noMotionSimulation: self = .noMotionSimulation
        case .sound: self = .sound
        case .noSoundHazard: self = .noSoundHazard
        case .unknown: self = .unknown
        }
    }
    
    public var stringValue: String {
        switch self {
        case .flashing: return _AccessibilityHazard.flashing.rawValue
        case .noFlashingHazard: return _AccessibilityHazard.noFlashingHazard.rawValue
        case .motionSimulation: return _AccessibilityHazard.motionSimulation.rawValue
        case .noMotionSimulation: return _AccessibilityHazard.noMotionSimulation.rawValue
        case .sound: return _AccessibilityHazard.sound.rawValue
        case .noSoundHazard: return _AccessibilityHazard.noSoundHazard.rawValue
        case .unknown: return _AccessibilityHazard.unknown.rawValue
        }
    }
}
