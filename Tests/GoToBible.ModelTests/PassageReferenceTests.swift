//
//  PassageReferenceTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import XCTest
@testable import GoToBible_Model

final class PassageReferenceTests: XCTestCase {
    
    func testInvalid() {
        let passageReference = PassageReference()
        XCTAssertFalse(passageReference.chapterReference.isValid)
        XCTAssertEqual(passageReference.display, "")
        XCTAssertEqual(passageReference.highlightedVerses.count, 0)
        XCTAssertFalse(passageReference.isValid)
    }
    
    func testValid() {
        var passageReference = PassageReference()
        passageReference.chapterReference = ChapterReference("Psalm 151")
        XCTAssertTrue(passageReference.chapterReference.isValid)
        XCTAssertEqual(passageReference.display, "")
        XCTAssertEqual(passageReference.highlightedVerses.count, 0)
        XCTAssertTrue(passageReference.isValid)
    }
}
