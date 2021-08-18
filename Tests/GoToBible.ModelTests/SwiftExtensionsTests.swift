//
//  SwiftExtensionsTests.swift
//
//
//  Created by Peter Chapman on 17/08/21.
//

import XCTest
@testable import GoToBible_Model

final class SwiftExtensionsTests: XCTestCase {
    
    func testEscapeDataString() {
        XCTAssertEqual("/1 John.1_3~6-7".escapeDataString, "%2F1%20John.1_3~6-7")
    }
    
    func testIsBlank_Empty() {
        XCTAssertTrue("".isBlank)
    }
    
    func testIsBlank_Letters() {
        XCTAssertFalse("A".isBlank)
    }
    
    func testIsBlank_NewLines() {
        XCTAssertTrue("""
            """.isBlank)
    }
    
    func testIsBlank_Spaces() {
        XCTAssertTrue("  ".isBlank)
    }
}
