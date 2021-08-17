//
//  RenderingSuggestionsTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import XCTest
@testable import GoToBible_Model

final class RenderingSuggestionsTests: XCTestCase {
    
    func testEmpty() {
        let renderingSuggestions = RenderingSuggestions()
        XCTAssertFalse(renderingSuggestions.ignoreCaseDiacriticsAndPunctuation)
        XCTAssertNil(renderingSuggestions.navigateToChapter)
    }
}
