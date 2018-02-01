import Foundation

/// A collection of music tracks.
@objc public protocol MusicAlbum: MusicPlaylist {
    /// Classification of the album by it's type of content: soundtrack, live album, studio album, etc.
    var albumProductionTypeRawType: NSNumber? { get set }
    /// A release of this album.
    /// - Inverse property: releaseOf.
    var albumRelease: MusicRelease? { get set }
    /// The kind of release which this album is: single, EP or album.
    var albumReleaseTypeRawValue: NSNumber? { get set }
    /// The artist that performed this album or recording.
    var byArtist: MusicGroup? { get set }
}

public extension MusicAlbum {
    var albumProductionType: MusicAlbumProduction? {
        get {
            guard let rawValue = albumProductionTypeRawType?.intValue else {
                return nil
            }
            
            return MusicAlbumProduction(rawValue: rawValue)
        }
        set {
            guard let rawValue = newValue?.rawValue else {
                albumProductionTypeRawType = nil
                return
            }
            
            albumProductionTypeRawType = NSNumber(value: rawValue)
        }
    }
    
    var albumReleaseType: MusicAlbumRelease? {
        get {
            guard let rawValue = albumReleaseTypeRawValue?.intValue else {
                return nil
            }
            
            return MusicAlbumRelease(rawValue: rawValue)
        }
        set {
            guard let rawValue = newValue?.rawValue else {
                albumReleaseTypeRawValue = nil
                return
            }
            
            albumReleaseTypeRawValue = NSNumber(value: rawValue)
        }
    }
}
