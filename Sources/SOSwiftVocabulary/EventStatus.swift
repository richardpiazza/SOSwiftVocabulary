import Foundation

/// An eventStatus of an event represents its status; particularly useful when an event is cancelled or rescheduled.
public enum EventStatus: String {
    case cancelled = "EventCancelled"
    case postponed = "EventPostponed"
    case rescheduled = "EventRescheduled"
    case scheduled = "EventScheduled"
}
