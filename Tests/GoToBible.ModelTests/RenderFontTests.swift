//
//  RenderFontTests.swift
//
//
//  Created by Peter Chapman on 17/08/21.
//

import XCTest
@testable import GoToBible_Model

final class RenderFontTests: XCTestCase {
    
    func testEmpty() {
        let renderFont = RenderFont()
        XCTAssertFalse(renderFont.bold)
        XCTAssertEqual(renderFont.familyName, "")
        XCTAssertFalse(renderFont.italic)
        XCTAssertEqual(renderFont.sizeInPoints, 0)
        XCTAssertFalse(renderFont.strikeout)
        XCTAssertFalse(renderFont.underline)
    }
}
