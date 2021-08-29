//
//  RenderingParametersTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import XCTest
@testable import GoToBible_Model

final class RenderingParametersTests: XCTestCase {
    
    func testEmpty() {
        let renderingParameters = RenderingParameters()
        XCTAssertEqual(renderingParameters.backgroundColour, Default.backgroundColour)
        XCTAssertEqual(renderingParameters.font, Default.font)
        XCTAssertEqual(renderingParameters.foregroundColour, Default.foregroundColour)
        XCTAssertEqual(renderingParameters.format, RenderFormat.html)
        XCTAssertEqual(renderingParameters.highlightColour, Default.highlightColour)
        XCTAssertFalse(renderingParameters.interlinearIgnoresCase)
        XCTAssertFalse(renderingParameters.interlinearIgnoresDiacritics)
        XCTAssertFalse(renderingParameters.interlinearIgnoresPunctuation)
        XCTAssertFalse(renderingParameters.isDebug)
        XCTAssertEqual(renderingParameters.passageReference, Default.passageReference)
        XCTAssertEqual(renderingParameters.primaryProvider, "")
        XCTAssertEqual(renderingParameters.primaryTranslation, "")
        XCTAssertTrue(renderingParameters.renderItalics)
        XCTAssertNil(renderingParameters.secondaryProvider)
        XCTAssertNil(renderingParameters.secondaryTranslation)
    }
}
