import UIKit
import XCTest
@testable import ArraySafety

class ArraySafetyTests: XCTestCase {
    func testArrayElementPresent() {
        let expected = 2
        let array = [1, expected, 3]
        XCTAssertEqual(array[safe: 1], expected)
    }
    
    func testArrayIndexOutOfBounds() {
        let array = [1, 2, 3]
        XCTAssertNil(array[safe: 3])
    }
    
    func testArrayNegativeIndex() {
        let array = [1, 2, 3]
        XCTAssertNil(array[safe: -1])
    }
    
    func testArrayAppendNonNilOptional() {
        let expected = "Hello world"
        let element: String? = expected
        var array = [String]()
        XCTAssert(array.append(element), "Element should be appended")
        XCTAssertEqual(array, [expected])
    }
    
    func testArrayAppendNil() {
        var array = [String]()
        XCTAssertFalse(array.append(nil))
        XCTAssertEqual(array, [])
    }
}
