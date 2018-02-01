import Foundation

/// An audio file.
@objc public protocol AudioObject: MediaObject {
    /// If this MediaObject is an AudioObject or VideoObject, the transcript of that object.
    var transcript: String? { get set }
}
