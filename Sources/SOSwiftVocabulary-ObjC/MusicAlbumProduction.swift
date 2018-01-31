import Foundation

fileprivate enum _MusicAlbumProduction: String {
    case compilation = "CompilationAlbum"
    case djMix = "DJMixAlbum"
    case demo = "DemoAlbum"
    case live = "LiveAlbum"
    case mixtape = "MixtapeAlbum"
    case remix = "RemixAlbum"
    case soundtrack = "SoundtrackAlbum"
    case spokenWord = "SpokenWordAlbum"
    case studio = "StudioAlbum"
}

/// Classification of the album by it's type of content: soundtrack, live album, studio album, etc.
@objc public enum MusicAlbumProduction: Int {
    case compilation
    case djMix
    case demo
    case live
    case mixtape
    case remix
    case soundtrack
    case spokenWord
    case studio
    
    public init?(stringValue: String) {
        guard let backingEnum = _MusicAlbumProduction(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .compilation: self = .compilation
        case .djMix: self = .djMix
        case .demo: self = .demo
        case .live: self = .live
        case .mixtape: self = .mixtape
        case .remix: self = .remix
        case .soundtrack: self = .soundtrack
        case .spokenWord: self = .spokenWord
        case .studio: self = .studio
        }
    }
    
    public var stringValue: String {
        switch self {
        case .compilation: return _MusicAlbumProduction.compilation.rawValue
        case .djMix: return _MusicAlbumProduction.djMix.rawValue
        case .demo: return _MusicAlbumProduction.demo.rawValue
        case .live: return _MusicAlbumProduction.live.rawValue
        case .mixtape: return _MusicAlbumProduction.mixtape.rawValue
        case .remix: return _MusicAlbumProduction.remix.rawValue
        case .soundtrack: return _MusicAlbumProduction.soundtrack.rawValue
        case .spokenWord: return _MusicAlbumProduction.spokenWord.rawValue
        case .studio: return _MusicAlbumProduction.studio.rawValue
        }
    }
}
