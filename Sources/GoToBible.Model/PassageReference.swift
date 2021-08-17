//
//  PassageReference.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

struct PassageReference: Codable, Equatable {
    var chapterReference = ChapterReference()
    var display: String = ""
    var highlightedVerses: [Int] = []
    var isValid: Bool {
        return self.chapterReference.isValid
    }
}
