//
//  Book.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

/// A book in a translation.
public struct Book: Codable, CustomStringConvertible {
    
    /// Gets the chapters.
    public var chapters: [ChapterReference] = []
    
    /// Gets the name of the book
    public var description: String {
        return self.name
    }
    
    /// Gets or sets the name of the book.
    public var name: String = ""
}
