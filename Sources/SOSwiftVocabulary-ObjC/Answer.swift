import Foundation

/// An answer offered to a question; perhaps correct, perhaps opinionated or wrong.
@objc public protocol Answer: Comment {
    /// The number of downvotes this question, answer or comment has received from the community.
    var downvoteCountRawValue: NSNumber? { get set }
    /// The parent of a question, answer or item in general.
    var parentItem: Question? { get set }
    /// The number of upvotes this question, answer or comment has received from the community.
    var upvoteCountRawValue: NSNumber? { get set }
}

public extension Answer {
    var downvoteCount: Int? {
        get {
            guard let rawValue = downvoteCountRawValue?.intValue else {
                return nil
            }
            
            return rawValue
        }
        set {
            guard let rawValue = newValue else {
                downvoteCountRawValue = nil
                return
            }
            
            downvoteCountRawValue = NSNumber(value: rawValue)
        }
    }
    
    var upvoteCount: Int? {
        get {
            guard let rawValue = upvoteCountRawValue?.intValue else {
                return nil
            }
            
            return rawValue
        }
        set {
            guard let rawValue = newValue else {
                upvoteCountRawValue = nil
                return
            }
            
            upvoteCountRawValue = NSNumber(value: rawValue)
        }
    }
}
