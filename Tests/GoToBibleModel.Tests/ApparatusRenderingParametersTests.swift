//
//  ApparatusRenderingParametersTests.swift
//
//
//  Created by Peter Chapman on 14/09/22.
//

import XCTest
@testable import GoToBibleModel

final class ApparatusRenderingParametersTests: XCTestCase {
    
    func testEmpty() {
        let apparatusRenderingParameters = ApparatusRenderingParameters()
        XCTAssertEqual(apparatusRenderingParameters.backgroundColour, Default.backgroundColour)
        XCTAssertEqual(apparatusRenderingParameters.font, Default.font)
        XCTAssertEqual(apparatusRenderingParameters.foregroundColour, Default.foregroundColour)
        XCTAssertEqual(apparatusRenderingParameters.format, RenderFormat.html)
        XCTAssertEqual(apparatusRenderingParameters.highlightColour, Default.highlightColour)
        XCTAssertFalse(apparatusRenderingParameters.interlinearIgnoresCase)
        XCTAssertFalse(apparatusRenderingParameters.interlinearIgnoresDiacritics)
        XCTAssertFalse(apparatusRenderingParameters.interlinearIgnoresPunctuation)
        XCTAssertFalse(apparatusRenderingParameters.isDebug)
        XCTAssertEqual(apparatusRenderingParameters.occurrenceMarker, "<span class=\"occurrence\">%OCCURRENCE%</span>")
        XCTAssertEqual(apparatusRenderingParameters.omissionMarker, "<em>Omit</em>")
        XCTAssertEqual(apparatusRenderingParameters.passageReference, Default.passageReference)
        XCTAssertEqual(apparatusRenderingParameters.primaryProvider, "")
        XCTAssertEqual(apparatusRenderingParameters.primaryTranslation, "")
        XCTAssertTrue(apparatusRenderingParameters.renderItalics)
        XCTAssertFalse(apparatusRenderingParameters.renderNeighbourForAddition)
        XCTAssertNil(apparatusRenderingParameters.secondaryProvider)
        XCTAssertNil(apparatusRenderingParameters.secondaryTranslation)
    }
}
