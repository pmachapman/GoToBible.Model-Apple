//
//  RenderedPassageTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import XCTest
@testable import GoToBibleModel

final class RenderedPassageTests: XCTestCase {
    
    func testEmpty() {
        let renderedPassage = RenderedPassage()
        XCTAssertEqual(renderedPassage.content, "")
        XCTAssertFalse(renderedPassage.nextPassage.isValid)
        XCTAssertFalse(renderedPassage.previousPassage.isValid)
        XCTAssertFalse(renderedPassage.suggestions.ignoreCaseDiacriticsAndPunctuation)
        XCTAssertNil(renderedPassage.suggestions.navigateToChapter)
    }
}
