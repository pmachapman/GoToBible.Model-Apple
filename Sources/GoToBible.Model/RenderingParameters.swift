//
//  RenderingParameters.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

public struct RenderingParameters: Codable, Equatable {
    public var backgroundColour: RenderColour = Default.backgroundColour
    public var font: RenderFont = Default.font
    public var foregroundColour: RenderColour = Default.foregroundColour
    public var format: RenderFormat = RenderFormat.html
    public var highlightColour: RenderColour = Default.highlightColour
    public var interlinearIgnoresCase: Bool = false
    public var interlinearIgnoresDiacritics: Bool = false
    public var interlinearIgnoresPunctuation: Bool = false
    public var isDebug: Bool = false
    public var passageReference: PassageReference = Default.passageReference
    public var primaryProvider: String = ""
    public var primaryTranslation: String = ""
    public var renderItalics: Bool = false
    public var secondaryProvider: String? = nil
    public var secondaryTranslation: String? = nil
}
