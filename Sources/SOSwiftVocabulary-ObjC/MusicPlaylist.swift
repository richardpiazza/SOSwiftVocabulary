import Foundation

/// A collection of music tracks in playlist form.
@objc public protocol MusicPlaylist: CreativeWork {
    /// The number of tracks in this album or playlist.
    var numTracksRawValue: NSNumber? { get set }
    /// A music recording (track)—usually a single song. If an ItemList is given, the list should contain items of type MusicRecording. Supersedes tracks.
    /// - schema.org property name: track
    var tracks: [ItemListOrMusicRecording]? { get set }
}

public extension MusicPlaylist {
    var numTracks: Int? {
        get {
            guard let rawValue = numTracksRawValue?.intValue else {
                return nil
            }
            
            return rawValue
        }
        set {
            guard let rawValue = newValue else {
                numTracksRawValue = nil
                return
            }
            
            numTracksRawValue = NSNumber(value: rawValue)
        }
    }
}
