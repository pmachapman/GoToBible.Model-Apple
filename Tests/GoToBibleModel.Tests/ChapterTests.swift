//
//  ChapterTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import Testing
@testable import GoToBibleModel

struct ChapterTests {
    
    @Test func testEmpty() {
        let chapter = Chapter()
        #expect(chapter.book == "")
        #expect(chapter.chapterNumber == 0)
        #expect(chapter.copyright == "")
        #expect(chapter.nextChapterReference.description == "")
        #expect(chapter.previousChapterReference.description == "")
        #expect(!chapter.supportsItalics)
        #expect(chapter.text == "")
        #expect(chapter.translation == "")
    }
}
