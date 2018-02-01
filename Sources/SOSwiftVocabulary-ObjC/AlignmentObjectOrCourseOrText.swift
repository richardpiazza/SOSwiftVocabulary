import Foundation

/// AlignmentObject, Course, Text
@objc public protocol AlignmentObjectOrCourseOrText {}

extension NSString: AlignmentObjectOrCourseOrText {}
