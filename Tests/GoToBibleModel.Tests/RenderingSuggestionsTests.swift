//
//  RenderingSuggestionsTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import Testing
@testable import GoToBibleModel

struct RenderingSuggestionsTests {
    
    @Test func testEmpty() {
        let renderingSuggestions = RenderingSuggestions()
        #expect(!renderingSuggestions.ignoreCaseDiacriticsAndPunctuation)
        #expect(renderingSuggestions.navigateToChapter == nil)
    }
}
