//
//  RenderingParameters.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

/// The rendering parameters.
public struct RenderingParameters: Codable, Equatable {
    
    /// Gets or sets the background colour.
    public var backgroundColour: RenderColour = Default.backgroundColour
    
    /// Gets or sets the font.
    public var font: RenderFont = Default.font
    
    /// Gets or sets the foreground colour.
    public var foregroundColour: RenderColour = Default.foregroundColour
    
    /// Gets or sets the format to render in.
    public var format: RenderFormat = RenderFormat.html
    
    /// Gets or sets the highlight colour.
    public var highlightColour: RenderColour = Default.highlightColour
    
    /// Gets or sets a value indicating whether the interlinear ignores case.
    public var interlinearIgnoresCase: Bool = false
    
    /// Gets or sets a value indicating whether the interlinear ignores diacritics.
    public var interlinearIgnoresDiacritics: Bool = false
    
    /// Gets or sets a value indicating whether the interlinear ignores punctuation.
    public var interlinearIgnoresPunctuation: Bool = false
    
    /// Gets or sets a value indicating whether this `RenderingParameters` is in debugging mode.
    /// - Remark: Debug mode will display extra developer information. It is not suitable for general use.
    public var isDebug: Bool = false
    
    /// Gets or sets the passage reference.
    public var passageReference: PassageReference = Default.passageReference
    
    /// Gets or sets the primary translation provider.
    public var primaryProvider: String = ""
    
    /// Gets or sets the primary translation.
    public var primaryTranslation: String = ""
    
    /// Gets or sets a value indicating whether to render supplied words in italics.
    public var renderItalics: Bool = true
    
    /// Gets or sets the secondary translation provider.
    public var secondaryProvider: String? = nil
    
    /// Gets or sets the secondary translation.
    public var secondaryTranslation: String? = nil
}
