//
//  RenderFont.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

/// The font to render with.
public struct RenderFont: Codable, Equatable {
    
    /// Gets or sets a value indicating whether the font is bold.
    public var bold: Bool = false
    
    /// Gets or sets the name of the font family.
    public var familyName: String = ""
    
    /// Gets or sets a value indicating whether the font is italic.
    public var italic: Bool = false
    
    /// Gets or sets the font size in points.
    public var sizeInPoints: Float = 0.0
    
    /// Gets or sets a value indicating whether the font is strikethrough.
    public var strikeout: Bool = false
    
    /// Gets or sets a value indicating whether the font is underlined.
    public var underline: Bool = false
}
