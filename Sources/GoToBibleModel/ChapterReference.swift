//
//  ChapterReference.swift
//
//  Swift-specific extension methods.
//
//  Created by Peter Chapman on 17/08/21.
//

import Foundation

/// A chapter reference.
public struct ChapterReference: Codable, CustomStringConvertible, Equatable {
    
    /// Initialises a new instance of the `ChapterReference` class.
    /// - Remark: This returns an invalid chapter reference.
    public init() {
        self.book = ""
        self.chapterNumber = 0
    }
    
    /// Initialises a new instance of the `ChapterReference` class.
    /// - Parameter book: The book name.
    /// - Parameter chapter: The chapter number.
    public init(book: String, chapter: Int) {
        // Special case for Psalm 151
        if book.replacingOccurrences(of: " ", with: "").lowercased() == "psalm151" {
            self.book = "Psalm"
            self.chapterNumber = 151
        } else {
            self.book = book
            self.chapterNumber = chapter
        }
    }
    
    /// Initialises a new instance of the `ChapterReference` class.
    /// - Parameter bookAndChapter: The book name and chapter number.
    public init(_ bookAndChapter: String) {
        if !bookAndChapter.isBlank {
            if let lastSpaceIndex = bookAndChapter.lastIndex(of: " ") {
                self.book = String(bookAndChapter[..<lastSpaceIndex])
                var chapter = bookAndChapter[bookAndChapter.index(after: lastSpaceIndex)...]
                if let firstColonIndex = chapter.firstIndex(of: ":") {
                    chapter = chapter[..<firstColonIndex]
                }

                let chapterNumber = Int(chapter)
                if chapterNumber != nil {
                    self.chapterNumber = chapterNumber ?? 0
                } else {
                    // Handle the case for one chapter books that start with a number
                    let bookNumber = Int(self.book)
                    if bookNumber != nil {
                        self.book = bookAndChapter
                    }
                    
                    self.chapterNumber = 0
                }
                
                return
            }
        }
        
        self.book = bookAndChapter
        self.chapterNumber = 0
    }
    
    /// Gets or sets the name of the book.
    public var book: String
    
    /// Gets or sets the chapter number.
    ///  - Remark: Chapter 0 refers to the introduction.
    public var chapterNumber: Int
    
    /// Gets the book name and chapter number.
    public var description: String {
        return if self.isValid {
            "\(self.book) \(self.chapterNumber)"
        } else {
            ""
        }
    }
    
    /// Gets a value indicating whether this instance is valid.
    public var isValid: Bool {
        return !self.book.isBlank
    }
}
