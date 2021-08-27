//
//  Default.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

public struct Default {
    
    public static var backgroundColour: RenderColour {
        return RenderColour(r: 255, g: 255, b: 255)
    }
    
    public static var font: RenderFont {
        return RenderFont(bold: false, familyName: "Calibri", italic: false, sizeInPoints: 14.25, strikeout: false, underline: false)
    }
    
    public static var foregroundColour: RenderColour {
        return RenderColour(r: 0, g: 0, b: 0)
    }
    
    public static var highlightColour: RenderColour {
        return RenderColour(r: 255, g: 255, b: 0)
    }
    
    public static var passage: String {
        return "John 3:16"
    }
    
    public static var passageReference: PassageReference {
        return PassageReference()
    }
}
