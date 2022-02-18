//
//  RenderingSuggestions.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

/// Rendering suggestions from the renderer.
/// - Remark: The client can suggest to the user different settings or translations from these suggestions.
public struct RenderingSuggestions: Codable {
    
    /// Gets or sets a value indicating whether the client should suggest to ignore case, diacritics and punctuation.
    public var ignoreCaseDiacriticsAndPunctuation: Bool = false
    
    /// Gets or sets the suggested chapter to navigate to.
    /// - Remark: This is specified if the chapter does not exist.
    public var navigateToChapter: ChapterReference? = nil
}
