//
//  RenderedPassage.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

struct RenderedPassage: Codable {
    var content: String = ""
    var nextPassage = PassageReference()
    var previousPassage = PassageReference()
    var suggestions = RenderingSuggestions()
}
