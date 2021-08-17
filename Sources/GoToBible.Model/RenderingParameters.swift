//
//  RenderingParameters.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

struct RenderingParameters: Codable, Equatable {
    var backgroundColour: RenderColour = Default.backgroundColour
    var font: RenderFont = Default.font
    var foregroundColour: RenderColour = Default.foregroundColour
    var format: RenderFormat = RenderFormat.html
    var highlightColour: RenderColour = Default.highlightColour
    var interlinearIgnoresCase: Bool = false
    var interlinearIgnoresDiacritics: Bool = false
    var interlinearIgnoresPunctuation: Bool = false
    var isDebug: Bool = false
    var passageReference: PassageReference = Default.passageReference
    var primaryProvider: String = ""
    var primaryTranslation: String = ""
    var renderItalics: Bool = false
    var secondaryProvider: String? = nil
    var secondaryTranslation: String? = nil
}
