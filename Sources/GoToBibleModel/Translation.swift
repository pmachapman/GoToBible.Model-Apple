//
//  Translation.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

/// A bible translation.
public struct Translation: Codable, CustomStringConvertible {
    
    /// Gets or sets the translation's author.
    public var author: String? = nil
    
    /// Gets or sets a value indicating whether this instance can be exported.
    public var canBeExported: Bool = false
    
    /// Gets or sets the translation's unique code.
    public var code: String = ""
    
    /// Gets or sets a value indicating whether this `Translation` is a commentary.
    public var commentary: Bool = false
    
    /// Gets or sets the copyright message.
    public var copyright: String? = nil
    
    /// Gets the translation name and language
    public var description: String {
        if self.language == nil {
            return self.name
        } else {
            return "\(self.language!): \(self.name)"
        }
    }
    
    /// Gets or sets the translation's dialect.
    public var dialect: String? = nil
    
    /// Gets or sets the translation's language.
    public var language: String? = nil
    
    /// Gets or sets the name of the translation.
    /// - Remark: This should be unique for the sake of the UI.
    public var name: String = ""
    
    /// Gets or sets the id of the translation provider.
    public var provider = ""
    
    /// Gets or sets the year the translation was made.
    public var year : Int = 0
}
