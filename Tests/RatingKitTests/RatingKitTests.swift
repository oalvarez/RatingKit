import XCTest
@testable import RatingKit

final class RatingKitTests: XCTestCase {
    func testExample() {
      var value = clamping(3.0, in: 0...1)
      XCTAssertEqual(value, 1)
      value = clamping(0.5, in: 0...1)
      XCTAssertEqual(value, 0.5)
      value = clamping(-1.0, in: 0...1)
      XCTAssertEqual(value, 0)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
