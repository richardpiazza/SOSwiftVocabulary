import Foundation

/// A specific question - e.g. from a user seeking answers online, or collected in a Frequently Asked Questions (FAQ) document.
@objc public protocol Question: CreativeWork {
    /// The answer that has been accepted as best, typically on a Question/Answer site. Sites vary in their selection mechanisms, e.g. drawing on community opinion and/or the view of the Question author.
    var acceptedAnswer: Answer? { get set }
    /// The number of answers this question has received.
    var answerCountRawValue: NSNumber? { get set }
    /// The number of downvotes this question, answer or comment has received from the community.
    var downvoteCountRawValue: NSNumber? { get set }
    /// An answer (possibly one of several, possibly incorrect) to a Question, e.g. on a Question/Answer site.
    var suggestedAnswer: Answer? { get set }
    /// The number of upvotes this question, answer or comment has received from the community.
    var upvoteCountRawValue: NSNumber? { get set }
}

public extension Question {
    var answerCount: Int? {
        get {
            guard let rawValue = answerCountRawValue?.intValue else {
                return nil
            }
            
            return rawValue
        }
        set {
            guard let rawValue = newValue else {
                answerCountRawValue = nil
                return
            }
            
            answerCountRawValue = NSNumber(value: rawValue)
        }
    }
    
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
