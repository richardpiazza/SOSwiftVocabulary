import Foundation

fileprivate enum _AccessibilityFeature: String {
    case alternativeText = "alternativeText"
    case annotations = "annotations"
    case audioDescription = "audioDescription"
    case bookmarks = "bookmarks"
    case braille = "braille"
    case captions = "captions"
    case chemML = "ChemML"
    case describedMath = "describedMath"
    case displayTransformability = "displayTransformability"
    case highContrastAudio = "highContrastAudio"
    case highContrastDisplay = "highContrastDisplay"
    case index = "index"
    case largePrint = "largePrint"
    case latex = "latex"
    case longDescription = "longDescription"
    case mathML = "MathML"
    case none = "none"
    case printPageNumbers = "printPageNumbers"
    case readingOrder = "readingOrder"
    case rubyAnnotations = "rubyAnnotations"
    case signLanguage = "signLanguage"
    case structuralNavigation = "structuralNavigation"
    case synchronizedAudioText = "synchronizedAudioText"
    case tableOfContents = "tableOfContents"
    case taggedPDF = "taggedPDF"
    case tactileGraphic = "tactileGraphic"
    case tactileObject = "tactileObject"
    case timingControl = "timingControl"
    case transcript = "transcript"
    case ttsMarkup = "ttsMarkup"
    case unlocked = "unlocked"
}

/// Content features of the resource, such as accessible media, supported enhancements for accessibility and alternatives.
@objc public enum AccessibilityFeature: Int {
    case alternativeText
    case annotations
    case audioDescription
    case bookmarks
    case braille
    case captions
    case chemML
    case describedMath
    case displayTransformability
    case highContrastAudio
    case highContrastDisplay
    case index
    case largePrint
    case latex
    case longDescription
    case mathML
    case none
    case printPageNumbers
    case readingOrder
    case rubyAnnotations
    case signLanguage
    case structuralNavigation
    case synchronizedAudioText
    case tableOfContents
    case taggedPDF
    case tactileGraphic
    case tactileObject
    case timingControl
    case transcript
    case ttsMarkup
    case unlocked
    
    public init?(stringValue: String) {
        guard let backingEnum = _AccessibilityFeature(rawValue: stringValue) else {
            return nil
        }
        
        switch backingEnum {
        case .alternativeText: self = .alternativeText
        case .annotations: self = .annotations
        case .audioDescription: self = .audioDescription
        case .bookmarks: self = .bookmarks
        case .braille: self = .braille
        case .captions: self = .captions
        case .chemML: self = .chemML
        case .describedMath: self = .describedMath
        case .displayTransformability: self = .displayTransformability
        case .highContrastAudio: self = .highContrastAudio
        case .highContrastDisplay: self = .highContrastDisplay
        case .index: self = .index
        case .largePrint: self = .largePrint
        case .latex: self = .latex
        case .longDescription: self = .longDescription
        case .mathML: self = .mathML
        case .none: self = .none
        case .printPageNumbers: self = .printPageNumbers
        case .readingOrder: self = .readingOrder
        case .rubyAnnotations: self = .rubyAnnotations
        case .signLanguage: self = .signLanguage
        case .structuralNavigation: self = .structuralNavigation
        case .synchronizedAudioText: self = .synchronizedAudioText
        case .tableOfContents: self = .tableOfContents
        case .taggedPDF: self = .taggedPDF
        case .tactileGraphic: self = .tactileGraphic
        case .tactileObject: self = .tactileObject
        case .timingControl: self = .timingControl
        case .transcript: self = .transcript
        case .ttsMarkup: self = .ttsMarkup
        case .unlocked: self = .unlocked
        }
    }
    
    public var stringValue: String {
        switch self {
        case .alternativeText: return _AccessibilityFeature.alternativeText.rawValue
        case .annotations: return _AccessibilityFeature.annotations.rawValue
        case .audioDescription: return _AccessibilityFeature.audioDescription.rawValue
        case .bookmarks: return _AccessibilityFeature.bookmarks.rawValue
        case .braille: return _AccessibilityFeature.braille.rawValue
        case .captions: return _AccessibilityFeature.captions.rawValue
        case .chemML: return _AccessibilityFeature.chemML.rawValue
        case .describedMath: return _AccessibilityFeature.describedMath.rawValue
        case .displayTransformability: return _AccessibilityFeature.displayTransformability.rawValue
        case .highContrastAudio: return _AccessibilityFeature.highContrastAudio.rawValue
        case .highContrastDisplay: return _AccessibilityFeature.highContrastDisplay.rawValue
        case .index: return _AccessibilityFeature.index.rawValue
        case .largePrint: return _AccessibilityFeature.largePrint.rawValue
        case .latex: return _AccessibilityFeature.latex.rawValue
        case .longDescription: return _AccessibilityFeature.longDescription.rawValue
        case .mathML: return _AccessibilityFeature.mathML.rawValue
        case .none: return _AccessibilityFeature.none.rawValue
        case .printPageNumbers: return _AccessibilityFeature.printPageNumbers.rawValue
        case .readingOrder: return _AccessibilityFeature.readingOrder.rawValue
        case .rubyAnnotations: return _AccessibilityFeature.rubyAnnotations.rawValue
        case .signLanguage: return _AccessibilityFeature.signLanguage.rawValue
        case .structuralNavigation: return _AccessibilityFeature.structuralNavigation.rawValue
        case .synchronizedAudioText: return _AccessibilityFeature.synchronizedAudioText.rawValue
        case .tableOfContents: return _AccessibilityFeature.tableOfContents.rawValue
        case .taggedPDF: return _AccessibilityFeature.taggedPDF.rawValue
        case .tactileGraphic: return _AccessibilityFeature.tactileGraphic.rawValue
        case .tactileObject: return _AccessibilityFeature.tactileObject.rawValue
        case .timingControl: return _AccessibilityFeature.timingControl.rawValue
        case .transcript: return _AccessibilityFeature.transcript.rawValue
        case .ttsMarkup: return _AccessibilityFeature.ttsMarkup.rawValue
        case .unlocked: return _AccessibilityFeature.unlocked.rawValue
        }
    }
}
