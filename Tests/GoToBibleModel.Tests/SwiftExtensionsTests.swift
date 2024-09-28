//
//  SwiftExtensionsTests.swift
//
//
//  Created by Peter Chapman on 17/08/21.
//

import Testing
@testable import GoToBibleModel

struct SwiftExtensionsTests {
    
    @Test func testEscapeDataString() {
        #expect("/1 John.1_3~6-7".escapeDataString == "%2F1%20John.1_3~6-7")
    }
    
    @Test func testIsBlank_Empty() {
        #expect("".isBlank)
    }
    
    @Test func testIsBlank_Letters() {
        #expect(!"A".isBlank)
    }
    
    @Test func testIsBlank_NewLines() {
        #expect("""
            """.isBlank)
    }
    
    @Test func testIsBlank_Spaces() {
        #expect("  ".isBlank)
    }
}
