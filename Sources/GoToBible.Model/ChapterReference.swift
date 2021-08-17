//
//  ChapterReference.swift
//
//  Swift-specific extension methods.
//
//  Created by Peter Chapman on 17/08/21.
//

import Foundation

struct ChapterReference: Codable, CustomStringConvertible, Equatable {
    
    init() {
        self.book = ""
        self.chapterNumber = 0
    }
    
    init(book: String, chapter: Int) {
        // Special case for Psalm 151
        if book.replacingOccurrences(of: " ", with: "").lowercased() == "psalm151" {
            self.book = "Psalm"
            self.chapterNumber = 151
        } else {
            self.book = book
            self.chapterNumber = chapter
        }
    }
    
    init(_ bookAndChapter: String) {
        if !bookAndChapter.isBlank {
            if let lastSpaceIndex = bookAndChapter.lastIndex(of: " ") {
                self.book = String(bookAndChapter[..<lastSpaceIndex])
                var chapter = bookAndChapter[bookAndChapter.index(after: lastSpaceIndex)...]
                if let firstColonIndex = chapter.firstIndex(of: ":") {
                    chapter = chapter[..<firstColonIndex]
                }

                let chapterNumber = Int(chapter) ?? 0
                self.chapterNumber = chapterNumber
                return
            }
        }
        
        self.book = bookAndChapter
        self.chapterNumber = 0
    }
    
    var book: String
    
    var chapterNumber: Int
    
    var description: String {
        if self.isValid {
            return "\(self.book) \(self.chapterNumber)"
        } else {
            return ""
        }
    }
    
    var isValid: Bool {
        return !self.book.isBlank
    }
}
