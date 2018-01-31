import Foundation

fileprivate enum _MusicReleaseFormat: String {
    case cd = "CDFormat"
    case cassette = "CassetteFormat"
    case dvd = "DVDFormat"
    case digitalAudioTape = "DigitalAudioTapeFormat"
    case digital = "DigitalFormat"
    case laserDisc = "LaserDiscFormat"
    case vinyl = "VinylFormat"
}

/// Format of this release (the type of recording media used, ie. compact disc, digital media, LP, etc.).
@objc public enum MusicReleaseFormat: Int {
    case cd
    case cassette
    case dvd
    case digitalAudioTape
    case digital
    case laserDisc
    case vinyl
    
    public init?(stringValue: String) {
        guard let backingEnum = _MusicReleaseFormat(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .cd: self = .cd
        case .cassette: self = .cassette
        case .dvd: self = .dvd
        case .digitalAudioTape: self = .digitalAudioTape
        case .digital: self = .digital
        case .laserDisc: self = .laserDisc
        case .vinyl: self = .vinyl
        }
    }
    
    public var stringValue: String {
        switch self {
        case .cd: return _MusicReleaseFormat.cd.rawValue
        case .cassette: return _MusicReleaseFormat.cassette.rawValue
        case .dvd: return _MusicReleaseFormat.dvd.rawValue
        case .digitalAudioTape: return _MusicReleaseFormat.digitalAudioTape.rawValue
        case .digital: return _MusicReleaseFormat.digital.rawValue
        case .laserDisc: return _MusicReleaseFormat.laserDisc.rawValue
        case .vinyl: return _MusicReleaseFormat.vinyl.rawValue
        }
    }
}
