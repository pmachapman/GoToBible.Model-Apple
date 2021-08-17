//
//  Book.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

struct Book: Codable, CustomStringConvertible {
    
    var chapters: [ChapterReference] = []
    
    var description: String {
        return self.name
    }
    
    var name: String = ""
}
