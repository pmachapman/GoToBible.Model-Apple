//
//  Default.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

struct Default {
    
    static var backgroundColour: RenderColour {
        return RenderColour(r: 255, g: 255, b: 255)
    }
    
    static var font: RenderFont {
        return RenderFont(bold: false, familyName: "Calibri", italic: false, sizeInPoints: 14.25, strikeout: false, underline: false)
    }
    
    static var foregroundColour: RenderColour {
        return RenderColour(r: 0, g: 0, b: 0)
    }
    
    static var highlightColour: RenderColour {
        return RenderColour(r: 255, g: 255, b: 0)
    }
    
    static var passage: String {
        return "John 3:16"
    }
    
    static var passageReference: PassageReference {
        return PassageReference()
    }
}
