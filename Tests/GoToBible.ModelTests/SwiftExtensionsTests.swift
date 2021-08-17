//
//  SwiftExtensionsTests.swift
//
//
//  Created by Peter Chapman on 17/08/21.
//

import XCTest
@testable import GoToBible_Model

final class SwiftExtensionsTests: XCTestCase {
    
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
