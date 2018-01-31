import Foundation

/// A list of single or combined accessModes that are sufficient to understand all the intellectual content of a resource.
public enum AccessModeSufficient: String {
    case auditory = "auditory"
    case tactile = "tactile"
    case textual = "textual"
    case visual = "visual"
}
