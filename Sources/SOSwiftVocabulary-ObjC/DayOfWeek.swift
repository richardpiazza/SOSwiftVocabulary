import Foundation

fileprivate enum _DayOfWeek: String {
    case friday = "Friday"
    case monday = "Monday"
    case publicHolidays = "PublicHolidays"
    case saturday = "Saturday"
    case sunday = "Sunday"
    case thursday = "Thursday"
    case tuesday = "Tuesday"
    case wednesday = "Wednesday"
}

/// The day of the week, e.g. used to specify to which day the opening hours of an OpeningHoursSpecification refer.
@objc public enum DayOfWeek: Int {
    case friday
    case monday
    case publicHolidays
    case saturday
    case sunday
    case thursday
    case tuesday
    case wednesday
    
    public init?(stringValue: String) {
        guard let backingEnum = _DayOfWeek(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .friday: self = .friday
        case .monday: self = .monday
        case .publicHolidays: self = .publicHolidays
        case .saturday: self = .saturday
        case .sunday: self = .sunday
        case .thursday: self = .thursday
        case .tuesday: self = .tuesday
        case .wednesday: self = .wednesday
        }
    }
    
    public var stringValue: String {
        switch self {
        case .friday: return _DayOfWeek.friday.rawValue
        case .monday: return _DayOfWeek.monday.rawValue
        case .publicHolidays: return _DayOfWeek.publicHolidays.rawValue
        case .saturday: return _DayOfWeek.saturday.rawValue
        case .sunday: return _DayOfWeek.sunday.rawValue
        case .thursday: return _DayOfWeek.thursday.rawValue
        case .tuesday: return _DayOfWeek.tuesday.rawValue
        case .wednesday: return _DayOfWeek.wednesday.rawValue
        }
    }
}
