import Foundation

/// A comment on an item - for example, a comment on a blog post. The comment's content is expressed via the text property, and its topic via about, properties shared with all CreativeWorks.
@objc public protocol Comment: CreativeWork {
    /// The number of downvotes this question, answer or comment has received from the community.
    var downvoteCountRawValue: NSNumber? { get set }
    /// The parent of a question, answer or item in general.
    var parentItem: Question? { get set }
    /// The number of upvotes this question, answer or comment has received from the community.
    var upvoteCountRawValue: NSNumber? { get set }
}

public extension Comment {
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
