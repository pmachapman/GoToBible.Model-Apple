//
//  Chapter.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

/// A chapter retrieved from a provider.
public struct Chapter: Codable {
    
    /// Gets or sets the book.
    public var book: String = ""
    
    /// Gets or sets the chapter number.
    public var chapterNumber: Int = 0
    
    /// Gets or sets the copyright message.
    /// - Remark: This is to be displayed after the text, and will be HTML.
    public var copyright: String = ""
    
    /// Gets or sets the next chapter reference.
    public var nextChapterReference = ChapterReference()
    
    /// Gets or sets the previous chapter reference.
    public var previousChapterReference = ChapterReference()
    
    /// Gets or sets a value indicating whether this chapter supports italics.
    public var supportsItalics: Bool = false
    
    /// Gets or sets the text.
    public var text: String = ""
    
    /// Gets or sets the translation.
    public var translation: String = ""
}
