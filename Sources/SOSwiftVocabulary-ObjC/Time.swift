import Foundation

/// A point in time recurring on multiple days in the form hh:mm:ss[Z|(+|-)hh:mm]
@objc public protocol Time {}

extension NSString: Time {}
