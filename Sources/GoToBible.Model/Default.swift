//
//  Default.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

/// The renderer defaults.
public struct Default {
    
    /// Gets the default background colour.
    /// - Remark: This is white by default.
    public static var backgroundColour: RenderColour {
        return RenderColour(r: 255, g: 255, b: 255)
    }
    
    /// Gets the default font.
    public static var font: RenderFont {
        return RenderFont(bold: false, familyName: "Calibri", italic: false, sizeInPoints: 14.25, strikeout: false, underline: false)
    }
    
    /// Gets the default foreground colour.
    /// - Remark: This is black by default.
    public static var foregroundColour: RenderColour {
        return RenderColour(r: 0, g: 0, b: 0)
    }
    
    /// Gets the default highlight colour.
    /// - Remark: This is yellow by default.
    public static var highlightColour: RenderColour {
        return RenderColour(r: 255, g: 255, b: 0)
    }
    
    /// The default to passage to display if none is specified.
    public static var passage: String {
        return "John 3:16"
    }
    
    /// Gets the default passage reference.
    public static var passageReference: PassageReference {
        return PassageReference()
    }
}
