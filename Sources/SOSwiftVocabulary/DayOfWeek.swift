import Foundation

/// The day of the week, e.g. used to specify to which day the opening hours of an OpeningHoursSpecification refer.
public enum DayOfWeek: String {
    case friday = "Friday"
    case monday = "Monday"
    case publicHolidays = "PublicHolidays"
    case saturday = "Saturday"
    case sunday = "Sunday"
    case thursday = "Thursday"
    case tuesday = "Tuesday"
    case wednesday = "Wednesday"
}
