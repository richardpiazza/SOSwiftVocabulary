import Foundation

/// Indicates the current disposition of the Action.
public enum ActionStatus: String {
    case active = "ActiveActionStatus"
    case completed = "CompletedActionStatus"
    case failed = "FailedActionStatus"
    case potential = "PotentialActionStatus"
}
