//
//  RenderColourTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import XCTest
@testable import GoToBibleModel

final class RenderColourTests: XCTestCase {
    
    func testEmpty() {
        let renderColour = RenderColour()
        XCTAssertEqual(renderColour.r, 0)
        XCTAssertEqual(renderColour.g, 0)
        XCTAssertEqual(renderColour.b, 0)
    }
}
