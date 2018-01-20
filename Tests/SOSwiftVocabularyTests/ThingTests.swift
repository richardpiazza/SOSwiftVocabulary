import XCTest
@testable import SOSwiftVocabulary

class ThingTests: XCTestCase {

    static var allTests = [
        ("testSchemaAndType", testSchemaAndType)
    ]
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    struct TestThing: Thing {
        static var type: String {
            return "Thing"
        }
        
        static var explicitSubtypes: [Thing.Type] {
            return []
        }
        
        var additionalType: URL?
        var alternativeName: String?
        var description: String?
        var disambiguatingDescription: String?
        var identifier: Identifier?
        var image: ImageObjectOrURL?
        var mainEntityOfPage: CreativeWorkOrURL?
        var name: String?
        var potentialAction: Action?
        var sameAs: [URL]?
        var subjectOf: CreativeWorkOrEvent?
        var url: URL?
    }
    
    func testSchemaAndType() {
        XCTAssertEqual(TestThing.type, "Thing")
        XCTAssertEqual(TestThing.context, "http://www.schema.org")
    }

}
