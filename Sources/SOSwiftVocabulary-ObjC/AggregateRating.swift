import Foundation

/// The average rating based on multiple ratings or reviews.
@objc public protocol AggregateRating: Rating {
    /// The item that is being reviewed/rated.
    var itemReviewed: Thing? { get set }
    /// The count of total number of ratings.
    var ratingCountRawValue: NSNumber? { get set }
    /// The count of total number of reviews.
    var reviewCountRawValue: NSNumber? { get set }
}

public extension AggregateRating {
    var ratingCount: Int? {
        get {
            guard let rawValue = ratingCountRawValue?.intValue else {
                return nil
            }
            
            return rawValue
        }
        set {
            guard let rawValue = newValue else {
                ratingCountRawValue = nil
                return
            }
            
            ratingCountRawValue = NSNumber(value: rawValue)
        }
    }
    
    var reviewCount: Int? {
        get {
            guard let rawValue = reviewCountRawValue?.intValue else {
                return nil
            }
            
            return rawValue
        }
        set {
            guard let rawValue = newValue else {
                reviewCountRawValue = nil
                return
            }
            
            reviewCountRawValue = NSNumber(value: rawValue)
        }
    }
}
