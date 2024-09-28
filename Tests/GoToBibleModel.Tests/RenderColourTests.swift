//
//  RenderColourTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import Testing
@testable import GoToBibleModel

struct RenderColourTests {
    
    @Test func testEmpty() {
        let renderColour = RenderColour()
        #expect(renderColour.r == 0)
        #expect(renderColour.g == 0)
        #expect(renderColour.b == 0)
    }
}
