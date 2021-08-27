//
//  Book.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

public struct Book: Codable, CustomStringConvertible {
    
    public var chapters: [ChapterReference] = []
    
    public var description: String {
        return self.name
    }
    
    public var name: String = ""
}
