//
//  IProvider.swift
//  
//
//  Created by Peter Chapman on 11/10/21.
//

/// The provider interface.
public protocol IProvider {
    
    /// Gets the provider identifier.
    var id: String { get }
    
    /// Gets the provider name.
    var name: String { get }
    
    /// Gets the books for a translation.
    /// - Parameter translation: The translation code.
    /// - Parameter includeChapters: If set to `true` include the chapters.
    /// - Returns: The books.
    /// - Remark: Excluding chapters will often speed up the function.
    func getBooks(translation: String, includeChapters: Bool) -> [Book]
    
    /// Gets a chapter from the bible.
    /// - Parameter translation: The translation code.
    /// - Parameter book: The book name.
    /// - Parameter chapter: The chapter number.
    /// - Returns: The chapter for rendering.
    func getChapter(translation: String, book: String, chapterNumber: Int) -> Chapter
    
    /// Gets the translations available from the provider.
    /// - Returns: The available translations.
    func getTranslations() -> Translation
}

public extension IProvider {
    
    /// Gets a chapter from the bible.
    /// - Parameter translation: The translation code.
    /// - Parameter chapterReference: The chapter reference.
    /// - Returns: The chapter for rendering.
    func getChapter(translation: String, chapterReference: ChapterReference) -> Chapter {
        return getChapter(translation: translation, book: chapterReference.book, chapterNumber: chapterReference.chapterNumber)
    }
}
