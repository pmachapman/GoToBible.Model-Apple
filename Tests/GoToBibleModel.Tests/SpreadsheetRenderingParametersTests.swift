//
//  SpreadsheetRenderingParametersTests.swift
//
//
//  Created by Peter Chapman on 14/09/22.
//

import Testing
@testable import GoToBibleModel

struct SpreadsheetRenderingParametersTests {
    
    @Test func testEmpty() {
        let spreadsheetRenderingParameters = SpreadsheetRenderingParameters()
        #expect(spreadsheetRenderingParameters.backgroundColour == Default.backgroundColour)
        #expect(spreadsheetRenderingParameters.font == Default.font)
        #expect(spreadsheetRenderingParameters.foregroundColour == Default.foregroundColour)
        #expect(spreadsheetRenderingParameters.format == RenderFormat.html)
        #expect(spreadsheetRenderingParameters.highlightColour == Default.highlightColour)
        #expect(!spreadsheetRenderingParameters.interlinearIgnoresCase)
        #expect(!spreadsheetRenderingParameters.interlinearIgnoresDiacritics)
        #expect(!spreadsheetRenderingParameters.interlinearIgnoresPunctuation)
        #expect(!spreadsheetRenderingParameters.isDebug)
        #expect(spreadsheetRenderingParameters.omissionMarker == SpreadsheetRenderingParameters.omit)
        #expect(spreadsheetRenderingParameters.passageReference == Default.passageReference)
        #expect(spreadsheetRenderingParameters.primaryProvider == "")
        #expect(spreadsheetRenderingParameters.primaryTranslation == "")
        #expect(spreadsheetRenderingParameters.renderItalics)
        #expect(!spreadsheetRenderingParameters.renderNeighbourForAddition)
        #expect(spreadsheetRenderingParameters.secondaryProvider == nil)
        #expect(spreadsheetRenderingParameters.secondaryTranslation == nil)
    }
}
