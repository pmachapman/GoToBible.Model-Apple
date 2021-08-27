//
//  RenderedPassage.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

public struct RenderedPassage: Codable {
    public var content: String = ""
    public var nextPassage = PassageReference()
    public var previousPassage = PassageReference()
    public var suggestions = RenderingSuggestions()
}
