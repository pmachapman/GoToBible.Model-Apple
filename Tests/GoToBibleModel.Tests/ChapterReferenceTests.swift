//
//  ChapterReferenceTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import Testing
@testable import GoToBibleModel

struct ChapterReferenceTests {
    
    @Test func testEmptyConstructor() {
        let chapterReference = ChapterReference()
        #expect(chapterReference.book == "")
        #expect(chapterReference.chapterNumber == 0)
        #expect(chapterReference.description == "")
        #expect(!chapterReference.isValid)
    }
    
    @Test func testBookAndChapterInvalidConstructor() {
        let chapterReference = ChapterReference("")
        #expect(chapterReference.book == "")
        #expect(chapterReference.chapterNumber == 0)
        #expect(chapterReference.description == "")
        #expect(!chapterReference.isValid)
    }
    
    @Test func testBookAndChapterInvalidChapterConstructor() {
        let chapterReference = ChapterReference("Genesis Fifty")
        #expect(chapterReference.book == "Genesis")
        #expect(chapterReference.chapterNumber == 0)
        #expect(chapterReference.description == "Genesis 0")
        #expect(chapterReference.isValid)
    }
    
    @Test func testBookAndChapterMissingChapterConstructor() {
        let chapterReference = ChapterReference("Genesis")
        #expect(chapterReference.book == "Genesis")
        #expect(chapterReference.chapterNumber == 0)
        #expect(chapterReference.description == "Genesis 0")
        #expect(chapterReference.isValid)
    }
    
    @Test func testBookAndChapterBookStartsWithNumberMissingChapter() {
        let chapterReference = ChapterReference("2 John")
        #expect(chapterReference.book == "2 John")
        #expect(chapterReference.chapterNumber == 0)
        #expect(chapterReference.description == "2 John 0")
        #expect(chapterReference.isValid)
    }
    
    @Test func testBookAndChapterValidConstructor() {
        let chapterReference = ChapterReference("Genesis 50")
        #expect(chapterReference.book == "Genesis")
        #expect(chapterReference.chapterNumber == 50)
        #expect(chapterReference.description == "Genesis 50")
        #expect(chapterReference.isValid)
    }
    
    @Test func testTwoParameterInvalidConstructor() {
        let chapterReference = ChapterReference(book: "", chapter: 0)
        #expect(chapterReference.book == "")
        #expect(chapterReference.chapterNumber == 0)
        #expect(chapterReference.description == "")
        #expect(!chapterReference.isValid)
    }
    
    @Test func testTwoParameterPsalm151Constructor() {
        let chapterReference = ChapterReference(book: "Psalm 151", chapter: 1)
        #expect(chapterReference.book == "Psalm")
        #expect(chapterReference.chapterNumber == 151)
        #expect(chapterReference.description == "Psalm 151")
        #expect(chapterReference.isValid)
    }
    
    @Test func testTwoParameterValidConstructor() {
        let chapterReference = ChapterReference(book: "Genesis", chapter: 50)
        #expect(chapterReference.book == "Genesis")
        #expect(chapterReference.chapterNumber == 50)
        #expect(chapterReference.description == "Genesis 50")
        #expect(chapterReference.isValid)
    }
}
