//
//  SpreadsheetRenderingParametersTests.swift
//
//
//  Created by Peter Chapman on 14/09/22.
//

import XCTest
@testable import GoToBibleModel

final class SpreadsheetRenderingParametersTests: XCTestCase {
    
    func testEmpty() {
        let spreadsheetRenderingParameters = SpreadsheetRenderingParameters()
        XCTAssertEqual(spreadsheetRenderingParameters.backgroundColour, Default.backgroundColour)
        XCTAssertEqual(spreadsheetRenderingParameters.font, Default.font)
        XCTAssertEqual(spreadsheetRenderingParameters.foregroundColour, Default.foregroundColour)
        XCTAssertEqual(spreadsheetRenderingParameters.format, RenderFormat.html)
        XCTAssertEqual(spreadsheetRenderingParameters.highlightColour, Default.highlightColour)
        XCTAssertFalse(spreadsheetRenderingParameters.interlinearIgnoresCase)
        XCTAssertFalse(spreadsheetRenderingParameters.interlinearIgnoresDiacritics)
        XCTAssertFalse(spreadsheetRenderingParameters.interlinearIgnoresPunctuation)
        XCTAssertFalse(spreadsheetRenderingParameters.isDebug)
        XCTAssertEqual(spreadsheetRenderingParameters.omissionMarker, "Omit")
        XCTAssertEqual(spreadsheetRenderingParameters.passageReference, Default.passageReference)
        XCTAssertEqual(spreadsheetRenderingParameters.primaryProvider, "")
        XCTAssertEqual(spreadsheetRenderingParameters.primaryTranslation, "")
        XCTAssertTrue(spreadsheetRenderingParameters.renderItalics)
        XCTAssertFalse(spreadsheetRenderingParameters.renderNeighbourForAddition)
        XCTAssertNil(spreadsheetRenderingParameters.secondaryProvider)
        XCTAssertNil(spreadsheetRenderingParameters.secondaryTranslation)
    }
}
