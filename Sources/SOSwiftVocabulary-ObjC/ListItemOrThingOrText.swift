import Foundation

/// ListItem, Text, Thing
@objc public protocol ListItemOrThingOrText {}

extension NSString: ListItemOrThingOrText {}
