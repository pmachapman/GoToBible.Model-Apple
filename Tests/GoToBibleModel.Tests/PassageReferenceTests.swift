//
//  PassageReferenceTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import Testing
@testable import GoToBibleModel

struct PassageReferenceTests {
    
    @Test func testInvalid() {
        let passageReference = PassageReference()
        #expect(!passageReference.chapterReference.isValid)
        #expect(passageReference.display == "")
        #expect(passageReference.highlightedVerses.count == 0)
        #expect(!passageReference.isValid)
    }
    
    @Test func testValid() {
        var passageReference = PassageReference()
        passageReference.chapterReference = ChapterReference("Psalm 151")
        #expect(passageReference.chapterReference.isValid)
        #expect(passageReference.display == "")
        #expect(passageReference.highlightedVerses.count == 0)
        #expect(passageReference.isValid)
    }
}
