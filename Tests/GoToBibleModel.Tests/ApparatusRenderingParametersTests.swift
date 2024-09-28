//
//  ApparatusRenderingParametersTests.swift
//
//
//  Created by Peter Chapman on 14/09/22.
//

import Testing
@testable import GoToBibleModel

struct ApparatusRenderingParametersTests {
    @Test func testEmpty() {
        let apparatusRenderingParameters = ApparatusRenderingParameters()
        #expect(apparatusRenderingParameters.backgroundColour == Default.backgroundColour)
        #expect(apparatusRenderingParameters.font == Default.font)
        #expect(apparatusRenderingParameters.foregroundColour == Default.foregroundColour)
        #expect(apparatusRenderingParameters.format == RenderFormat.html)
        #expect(apparatusRenderingParameters.highlightColour == Default.highlightColour)
        #expect(!apparatusRenderingParameters.interlinearIgnoresCase)
        #expect(!apparatusRenderingParameters.interlinearIgnoresDiacritics)
        #expect(!apparatusRenderingParameters.interlinearIgnoresPunctuation)
        #expect(!apparatusRenderingParameters.isDebug)
        #expect(apparatusRenderingParameters.occurrenceMarker == "<span class=\"occurrence\">%OCCURRENCE%</span>")
        #expect(apparatusRenderingParameters.omissionMarker == "<em>Omit</em>")
        #expect(apparatusRenderingParameters.passageReference == Default.passageReference)
        #expect(apparatusRenderingParameters.primaryProvider == "")
        #expect(apparatusRenderingParameters.primaryTranslation == "")
        #expect(apparatusRenderingParameters.renderItalics)
        #expect(!apparatusRenderingParameters.renderNeighbourForAddition)
        #expect(apparatusRenderingParameters.secondaryProvider == nil)
        #expect(apparatusRenderingParameters.secondaryTranslation == nil)
    }
}
