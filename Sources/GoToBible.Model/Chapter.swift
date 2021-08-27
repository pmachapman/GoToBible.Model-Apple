//
//  Chapter.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

public struct Chapter: Codable {
    public var book: String = ""
    public var chapterNumber: Int = 0
    public var copyright: String = ""
    public var nextChapterReference = ChapterReference()
    public var previousChapterReference = ChapterReference()
    public var supportsItalics: Bool = false
    public var text: String = ""
    public var translation: String = ""
}
