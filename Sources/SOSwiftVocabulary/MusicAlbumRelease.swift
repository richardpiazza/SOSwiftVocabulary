import Foundation

/// The kind of release which this album is: single, EP or album.
public enum MusicAlbumRelease: String {
    case album = "AlbumRelease"
    case broadcast = "BroadcastRelease"
    case ep = "EPRelease"
    case single = "SingleRelease"
}
