import Foundation

fileprivate enum _MusicAlbumRelease: String {
    case album = "AlbumRelease"
    case broadcast = "BroadcastRelease"
    case ep = "EPRelease"
    case single = "SingleRelease"
}

/// The kind of release which this album is: single, EP or album.
@objc public enum MusicAlbumRelease: Int {
    case album
    case broadcast
    case ep
    case single
    
    public init?(stringValue: String) {
        guard let backingEnum = _MusicAlbumRelease(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .album: self = .album
        case .broadcast: self = .broadcast
        case .ep: self = .ep
        case .single: self = .single
        }
    }
    
    public var stringValue: String {
        switch self {
        case .album: return _MusicAlbumRelease.album.rawValue
        case .broadcast: return _MusicAlbumRelease.broadcast.rawValue
        case .ep: return _MusicAlbumRelease.ep.rawValue
        case .single: return _MusicAlbumRelease.single.rawValue
        }
    }
}
