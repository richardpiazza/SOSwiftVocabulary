import Foundation

@objc public protocol ImageObjectConformance:
                    ImageObjectOrURL,
                    ImageObjectOrPhotograph {}

/// An image file.
@objc public protocol ImageObject: MediaObject, ImageObjectConformance {
    /// The caption for this object.
    var caption: String? { get set }
    /// exif data for this object.
    var exifData: PropertyValueOrText? { get set }
    /// Indicates whether this image is representative of the content of the page.
    var representativeOfPageRawValue: NSNumber? { get set }
    /// Thumbnail image for an image or video.
    var thumbnail: ImageObject? { get set }
}

public extension ImageObject {
    var representativeOfPage: Bool? {
        get {
            guard let rawValue = representativeOfPageRawValue?.boolValue else {
                return nil
            }
            
            return rawValue
        }
        set {
            guard let rawValue = newValue else {
                representativeOfPageRawValue = nil
                return
            }
            
            representativeOfPageRawValue = NSNumber(value: rawValue)
        }
    }
}
