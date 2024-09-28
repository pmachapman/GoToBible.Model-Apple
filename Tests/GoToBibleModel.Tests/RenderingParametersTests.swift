//
//  RenderingParametersTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import Testing
@testable import GoToBibleModel

struct RenderingParametersTests {
    
    @Test func testEmpty() {
        let renderingParameters = RenderingParameters()
        #expect(renderingParameters.backgroundColour == Default.backgroundColour)
        #expect(renderingParameters.font == Default.font)
        #expect(renderingParameters.foregroundColour == Default.foregroundColour)
        #expect(renderingParameters.format == RenderFormat.html)
        #expect(renderingParameters.highlightColour == Default.highlightColour)
        #expect(!renderingParameters.interlinearIgnoresCase)
        #expect(!renderingParameters.interlinearIgnoresDiacritics)
        #expect(!renderingParameters.interlinearIgnoresPunctuation)
        #expect(!renderingParameters.isDebug)
        #expect(renderingParameters.passageReference == Default.passageReference)
        #expect(renderingParameters.primaryProvider == "")
        #expect(renderingParameters.primaryTranslation == "")
        #expect(renderingParameters.renderItalics)
        #expect(renderingParameters.secondaryProvider == nil)
        #expect(renderingParameters.secondaryTranslation == nil)
    }
}
