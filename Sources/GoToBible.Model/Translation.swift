//
//  Translation.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

struct Translation: Codable, CustomStringConvertible {
    
    var author: String? = nil
    
    var canBeExported: Bool = false
    
    var code: String = ""
    
    var commentary: Bool = false
    
    var copyright: String? = nil
    
    var description: String {
        if self.language == nil {
            return self.name
        } else {
            return "\(self.language!): \(self.name)"
        }
    }
    
    var dialect: String? = nil
    
    var language: String? = nil
    
    var name: String = ""
    
    var provider = ""
    
    var year : Int = 0
}
