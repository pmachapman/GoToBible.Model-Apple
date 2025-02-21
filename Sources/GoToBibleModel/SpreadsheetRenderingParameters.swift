//
//  ApparatusRenderingParameters.swift
//
//
//  Created by Peter Chapman on 14/09/22.
//

/// The spreadsheet rendering parameters.
public struct SpreadsheetRenderingParameters: Codable, Equatable {
    
    /// Phrase Omit for the omission marker
    public static let omit = "Omit"
    
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
    
    /// Gets or sets the omission marker.
    /// - Remark: This should be plain text.
    public var omissionMarker: String = omit
    
    /// Gets or sets the passage reference.
    public var passageReference: PassageReference = Default.passageReference
    
    /// Gets or sets the primary translation provider.
    public var primaryProvider: String = ""
    
    /// Gets or sets the primary translation.
    public var primaryTranslation: String = ""
    
    /// Gets or sets a value indicating whether to render supplied words in italics.
    public var renderItalics: Bool = true
    
    /// Gets or sets a value indicating whether we should render the neighbouring word in the apparatus, if a phrase is an addition.
    public var renderNeighbourForAddition: Bool = false
    
    /// Gets or sets the secondary translation provider.
    public var secondaryProvider: String? = nil
    
    /// Gets or sets the secondary translation.
    public var secondaryTranslation: String? = nil
}
