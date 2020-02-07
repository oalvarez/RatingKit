import XCTest
@testable import RatingKit

final class RatingKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(RatingKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
