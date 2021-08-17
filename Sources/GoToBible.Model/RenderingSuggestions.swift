//
//  RenderingSuggestions.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

struct RenderingSuggestions: Codable {
    var ignoreCaseDiacriticsAndPunctuation: Bool = false
    var navigateToChapter: ChapterReference? = nil
}
