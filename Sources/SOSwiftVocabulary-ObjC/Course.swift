import Foundation

public protocol CourseConformance:
                    AlignmentObjectOrCourseOrText
                {}

/// A description of an educational course which may be offered as distinct instances at which take place at different times or take place at different locations, or be offered through different media or modes of study.
/// An educational course is a sequence of one or more educational events and/or creative works which aims to build knowledge, competence or ability of learners.
public protocol Course: CreativeWork, CourseConformance {
    /// The identifier for the Course used by the course provider (e.g. CS101 or 6.001).
    var courseCode: String? { get set }
    /// Requirements for taking the Course. May be completion of another Course or a textual description like "permission of instructor". Requirements may be a pre-requisite competency, referenced using AlignmentObject.
    var coursePrerequisites: [AlignmentObjectOrCourseOrText]? { get set }
    /// An offering of the course at a specific time and place or through specific media or mode of study or to a specific section of students.
    /// - schema.org property name: hasCourseInstance
    var courseInstance: CourseInstance? { get set }
}
