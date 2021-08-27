//
//  Translation.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

public struct Translation: Codable, CustomStringConvertible {
    
    public var author: String? = nil
    
    public var canBeExported: Bool = false
    
    public var code: String = ""
    
    public var commentary: Bool = false
    
    public var copyright: String? = nil
    
    public var description: String {
        if self.language == nil {
            return self.name
        } else {
            return "\(self.language!): \(self.name)"
        }
    }
    
    public var dialect: String? = nil
    
    public var language: String? = nil
    
    public var name: String = ""
    
    public var provider = ""
    
    public var year : Int = 0
}
