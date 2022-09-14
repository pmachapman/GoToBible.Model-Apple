//
//  RenderFormatTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import XCTest
@testable import GoToBibleModel

final class RenderFormatTests: XCTestCase {
    
    func testAccordance() {
        XCTAssertEqual(RenderFormat.accordance.rawValue, 2)
    }
    
    func testApparatus() {
        XCTAssertEqual(RenderFormat.apparatus.rawValue, 3)
    }
    
    func testHtml() {
        XCTAssertEqual(RenderFormat.html.rawValue, 1)
    }
    
    func testSpreadsheet() {
        XCTAssertEqual(RenderFormat.spreadsheet.rawValue, 4)
    }
    
    func testText() {
        XCTAssertEqual(RenderFormat.text.rawValue, 0)
    }
}

