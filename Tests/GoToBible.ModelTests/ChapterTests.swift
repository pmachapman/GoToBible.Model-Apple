//
//  ChapterTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import XCTest
@testable import GoToBible_Model

final class ChapterTests: XCTestCase {
    
    func testEmpty() {
        let chapter = Chapter()
        XCTAssertEqual(chapter.book, "")
        XCTAssertEqual(chapter.chapterNumber, 0)
        XCTAssertEqual(chapter.copyright, "")
        XCTAssertEqual(chapter.nextChapterReference.description, "")
        XCTAssertEqual(chapter.previousChapterReference.description, "")
        XCTAssertFalse(chapter.supportsItalics)
        XCTAssertEqual(chapter.text, "")
        XCTAssertEqual(chapter.translation, "")
    }
}
