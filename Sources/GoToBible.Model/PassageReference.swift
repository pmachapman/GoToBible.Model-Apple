//
//  PassageReference.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

public struct PassageReference: Codable, Equatable {
    public var chapterReference = ChapterReference()
    public var display: String = ""
    public var highlightedVerses: [Int] = []
    public var isValid: Bool {
        return self.chapterReference.isValid
    }
}
