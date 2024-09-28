//
//  RenderFontTests.swift
//
//
//  Created by Peter Chapman on 17/08/21.
//

import Testing
@testable import GoToBibleModel

struct RenderFontTests {
    
    @Test func testEmpty() {
        let renderFont = RenderFont()
        #expect(!renderFont.bold)
        #expect(renderFont.familyName == "")
        #expect(!renderFont.italic)
        #expect(renderFont.sizeInPoints == 0)
        #expect(!renderFont.strikeout)
        #expect(!renderFont.underline)
    }
}
