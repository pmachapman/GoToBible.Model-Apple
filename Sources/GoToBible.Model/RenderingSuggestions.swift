//
//  RenderingSuggestions.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

public struct RenderingSuggestions: Codable {
    public var ignoreCaseDiacriticsAndPunctuation: Bool = false
    public var navigateToChapter: ChapterReference? = nil
}
