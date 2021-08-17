//
//  RenderFormatTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import XCTest
@testable import GoToBible_Model

final class RenderFormatTests: XCTestCase {
    
    func testAccordance() {
        XCTAssertEqual(RenderFormat.accordance.rawValue, 2)
    }
    
    func testHtml() {
        XCTAssertEqual(RenderFormat.html.rawValue, 1)
    }
    
    func testText() {
        XCTAssertEqual(RenderFormat.text.rawValue, 0)
    }
}

