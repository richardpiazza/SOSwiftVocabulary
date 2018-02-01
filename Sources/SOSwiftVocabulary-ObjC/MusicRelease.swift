import Foundation

/// A MusicRelease is a specific release of a music album.
@objc public protocol MusicRelease: MusicPlaylist {
    /// The catalog number for the release.
    var catalogNumber: String? { get set }
    /// The group the release is credited to if different than the byArtist. For example, Red and Blue is credited to "Stefani Germanotta Band", but by Lady Gaga.
    var creditedTo: OrganizationOrPerson? { get set }
    /// The duration of the item (movie, audio recording, event, etc.) in ISO 8601 date format.
    var duration: Duration? { get set }
    /// Format of this release (the type of recording media used, ie. compact disc, digital media, LP, etc.).
    var musicReleaseFormatRawValue: NSNumber? { get set }
    /// The label that issued the release.
    var recordLabel: Organization? { get set }
    /// The album this is a release of.
    /// - Inverse property: albumRelease.
    var releaseOf: MusicAlbum? { get set }
}

public extension MusicRelease {
    var musicReleaseFormat: MusicReleaseFormat? {
        get {
            guard let rawValue = musicReleaseFormatRawValue?.intValue else {
                return nil
            }
            
            return MusicReleaseFormat(rawValue: rawValue)
        }
        set {
            guard let rawValue = newValue?.rawValue else {
                musicReleaseFormatRawValue = nil
                return
            }
            
            musicReleaseFormatRawValue = NSNumber(value: rawValue)
        }
    }
}
