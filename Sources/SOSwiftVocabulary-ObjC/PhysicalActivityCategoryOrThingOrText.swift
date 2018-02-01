import Foundation

/// PhysicalActivityCategory, Thing, Text
@objc public protocol PhysicalActivityCategoryOrThingOrText {}

extension NSString: PhysicalActivityCategoryOrThingOrText {}

extension NSNumber: PhysicalActivityCategoryOrThingOrText {}
