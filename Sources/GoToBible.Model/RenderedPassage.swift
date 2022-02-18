//
//  RenderedPassage.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

/// A rendered passage.
public struct RenderedPassage: Codable {
    
    /// Gets or sets the passage content.
    public var content: String = ""
    
    /// Gets or sets the next passage.
    public var nextPassage = PassageReference()
    
    /// Gets or sets the previous passage.
    public var previousPassage = PassageReference()
    
    /// Gets or sets the rendering suggestions.
    public var suggestions = RenderingSuggestions()
}
