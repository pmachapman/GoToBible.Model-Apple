//
//  RenderedPassageTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import Testing
@testable import GoToBibleModel

struct RenderedPassageTests {
    
    @Test func testEmpty() {
        let renderedPassage = RenderedPassage()
        #expect(renderedPassage.content == "")
        #expect(!renderedPassage.nextPassage.isValid)
        #expect(!renderedPassage.previousPassage.isValid)
        #expect(!renderedPassage.suggestions.ignoreCaseDiacriticsAndPunctuation)
        #expect(renderedPassage.suggestions.navigateToChapter == nil)
    }
}
