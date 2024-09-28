//
//  RenderFormatTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import Testing
@testable import GoToBibleModel

struct RenderFormatTests {
    
    @Test func testAccordance() {
        #expect(RenderFormat.accordance.rawValue == 2)
    }
    
    @Test func testApparatus() {
        #expect(RenderFormat.apparatus.rawValue == 3)
    }
    
    @Test func testHtml() {
        #expect(RenderFormat.html.rawValue == 1)
    }
    
    @Test func testSpreadsheet() {
        #expect(RenderFormat.spreadsheet.rawValue == 4)
    }
    
    @Test func testText() {
        #expect(RenderFormat.text.rawValue == 0)
    }
}

