//
//  ChapterReferenceTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import XCTest
@testable import GoToBible_Model

final class ChapterReferenceTests: XCTestCase {
    
    func testEmptyConstructor() {
        let chapterReference = ChapterReference()
        XCTAssertEqual(chapterReference.book, "")
        XCTAssertEqual(chapterReference.chapterNumber, 0)
        XCTAssertEqual(chapterReference.description, "")
        XCTAssertFalse(chapterReference.isValid)
    }
    
    func testBookAndChapterInvalidConstructor() {
        let chapterReference = ChapterReference("")
        XCTAssertEqual(chapterReference.book, "")
        XCTAssertEqual(chapterReference.chapterNumber, 0)
        XCTAssertEqual(chapterReference.description, "")
        XCTAssertFalse(chapterReference.isValid)
    }
    
    func testBookAndChapterInvalidChapterConstructor() {
        let chapterReference = ChapterReference("Genesis Fifty")
        XCTAssertEqual(chapterReference.book, "Genesis")
        XCTAssertEqual(chapterReference.chapterNumber, 0)
        XCTAssertEqual(chapterReference.description, "Genesis 0")
        XCTAssertTrue(chapterReference.isValid)
    }
    
    func testBookAndChapterMissingChapterConstructor() {
        let chapterReference = ChapterReference("Genesis")
        XCTAssertEqual(chapterReference.book, "Genesis")
        XCTAssertEqual(chapterReference.chapterNumber, 0)
        XCTAssertEqual(chapterReference.description, "Genesis 0")
        XCTAssertTrue(chapterReference.isValid)
    }
    
    func testBookAndChapterValidConstructor() {
        let chapterReference = ChapterReference("Genesis 50")
        XCTAssertEqual(chapterReference.book, "Genesis")
        XCTAssertEqual(chapterReference.chapterNumber, 50)
        XCTAssertEqual(chapterReference.description, "Genesis 50")
        XCTAssertTrue(chapterReference.isValid)
    }
    
    func testTwoParameterInvalidConstructor() {
        let chapterReference = ChapterReference(book: "", chapter: 0)
        XCTAssertEqual(chapterReference.book, "")
        XCTAssertEqual(chapterReference.chapterNumber, 0)
        XCTAssertEqual(chapterReference.description, "")
        XCTAssertFalse(chapterReference.isValid)
    }
    
    func testTwoParameterPsalm151Constructor() {
        let chapterReference = ChapterReference(book: "Psalm 151", chapter: 1)
        XCTAssertEqual(chapterReference.book, "Psalm")
        XCTAssertEqual(chapterReference.chapterNumber, 151)
        XCTAssertEqual(chapterReference.description, "Psalm 151")
        XCTAssertTrue(chapterReference.isValid)
    }
    
    func testTwoParameterValidConstructor() {
        let chapterReference = ChapterReference(book: "Genesis", chapter: 50)
        XCTAssertEqual(chapterReference.book, "Genesis")
        XCTAssertEqual(chapterReference.chapterNumber, 50)
        XCTAssertEqual(chapterReference.description, "Genesis 50")
        XCTAssertTrue(chapterReference.isValid)
    }
}
