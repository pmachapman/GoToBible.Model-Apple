//
//  Chapter.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

struct Chapter: Codable {
    var book: String = ""
    var chapterNumber: Int = 0
    var copyright: String = ""
    var nextChapterReference = ChapterReference()
    var previousChapterReference = ChapterReference()
    var supportsItalics: Bool = false
    var text: String = ""
    var translation: String = ""
}
