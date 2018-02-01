import Foundation

/// A structured value providing information about the opening hours of a place or a certain service inside a place.
/// The place is open if the opens property is specified, and closed otherwise.
/// If the value for the closes property is less than the value for the opens property then the hour range is assumed to span over the next day.
@objc public protocol OpeningHoursSpecification: StructuredValue {
    /// The closing hour of the place or service on the given day(s) of the week.
    var closes: Time? { get set }
    /// The day of the week for which these opening hours are valid.
    var dayOfWeekRawValue: NSNumber? { get set }
    /// The opening hour of the place or service on the given day(s) of the week.
    var opens: Time? { get set }
    /// The date when the item becomes valid.
    var validFrom: DateTime? { get set }
    /// The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
    var validThrough: DateTime? { get set }
}

public extension OpeningHoursSpecification {
    var dayOfWeek: DayOfWeek? {
        get {
            guard let rawValue = dayOfWeekRawValue?.intValue else {
                return nil
            }
            
            return DayOfWeek(rawValue: rawValue)
        }
        set {
            guard let rawValue = newValue?.rawValue else {
                dayOfWeekRawValue = nil
                return
            }
            
            dayOfWeekRawValue = NSNumber(value: rawValue)
        }
    }
}
