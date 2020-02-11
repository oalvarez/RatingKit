import XCTest
@testable import RatingKit

final class RatingKitTests: XCTestCase {
  func testClamping_minimumValue() {
    let value = clamping(-1.0, in: 0...1)
    XCTAssertEqual(value, 0)
  }
  
  func testClamping_maximumValue() {
    let value = clamping(3.0, in: 0...1)
    XCTAssertEqual(value, 1)
  }
  
  func testClamping_middleValue() {
    let value = clamping(0.5, in: 0...1)
    XCTAssertEqual(value, 0.5)
  }
  
  static var allTests = [
    ("testClamping_minimumValue", testClamping_minimumValue),
    ("testClamping_maximumValue", testClamping_maximumValue),
    ("testClamping_middleValue", testClamping_middleValue),
  ]
}
