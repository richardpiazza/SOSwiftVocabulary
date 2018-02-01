import Foundation

@objc public protocol PhotographConformance:
                    ImageObjectOrPhotograph
                {}

/// A photograph.
@objc public protocol Photograph: CreativeWork, PhotographConformance {
    
}
