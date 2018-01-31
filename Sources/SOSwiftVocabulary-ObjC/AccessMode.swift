import Foundation

fileprivate enum _AccessMode: String {
    case auditory = "auditory"
    case tactile = "tactile"
    case textual = "textual"
    case visual = "visual"
    case colorDependent = "colorDependent"
    case chartOnVisual = "chartOnVisual"
    case chemOnVisual = "chemOnVisual"
    case diagramOnVisual = "diagramOnVisual"
    case mathOnVisual = "mathOnVisual"
    case musicOnVisual = "musicOnVisual"
    case textOnVisual = "textOnVisual"
}

/// The human sensory perceptual system or cognitive faculty through which a person may process or perceive information.
@objc public enum AccessMode: Int {
    case auditory
    case tactile
    case textual
    case visual
    case colorDependent
    case chartOnVisual
    case chemOnVisual
    case diagramOnVisual
    case mathOnVisual
    case musicOnVisual
    case textOnVisual
    
    public init?(stringValue: String) {
        guard let backingEnum = _AccessMode(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .auditory: self = .auditory
        case .tactile: self = .tactile
        case .textual: self = .textual
        case .visual: self = .visual
        case .colorDependent: self = .colorDependent
        case .chartOnVisual: self = .chartOnVisual
        case .chemOnVisual: self = .chemOnVisual
        case .diagramOnVisual: self = .diagramOnVisual
        case .mathOnVisual: self = .mathOnVisual
        case .musicOnVisual: self = .musicOnVisual
        case .textOnVisual: self = .textOnVisual
        }
    }
    
    public var stringValue: String {
        switch self {
        case .auditory: return _AccessMode.auditory.rawValue
        case .tactile: return _AccessMode.tactile.rawValue
        case .textual: return _AccessMode.textual.rawValue
        case .visual: return _AccessMode.visual.rawValue
        case .colorDependent: return _AccessMode.colorDependent.rawValue
        case .chartOnVisual: return _AccessMode.chartOnVisual.rawValue
        case .chemOnVisual: return _AccessMode.chemOnVisual.rawValue
        case .diagramOnVisual: return _AccessMode.diagramOnVisual.rawValue
        case .mathOnVisual: return _AccessMode.mathOnVisual.rawValue
        case .musicOnVisual: return _AccessMode.musicOnVisual.rawValue
        case .textOnVisual: return _AccessMode.textOnVisual.rawValue
        }
    }
}
