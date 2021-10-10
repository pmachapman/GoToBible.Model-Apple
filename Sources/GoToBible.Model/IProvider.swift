//
//  IProvider.swift
//  
//
//  Created by Peter Chapman on 11/10/21.
//

public protocol IProvider {
    var id: String { get }
    var name: String { get }
    func getBooks(translation: String, incudeChapters: Bool) -> [Book]
    func getChapter(translation: String, book: String, chapterNumber: Int) -> Chapter
    func getTranslations() -> Translation
}

public extension IProvider {
    func getChapter(translation: String, chapterReference: ChapterReference) -> Chapter {
        return getChapter(translation: translation, book: chapterReference.book, chapterNumber: chapterReference.chapterNumber)
    }
}
