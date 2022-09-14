//
//  InterlinearModeTests.swift
//  
//
//  Created by Peter Chapman on 14/09/22.
//

import XCTest
@testable import GoToBibleModel

final class InterlinearModeTests: XCTestCase {
    
    func testNone() {
        XCTAssertEqual(InterlinearMode.none.rawValue, 0)
    }
    
    func testIgnoresCase() {
        XCTAssertEqual(InterlinearMode.ignoresCase.rawValue, 1)
    }
    
    func testIgnoresDiacritics() {
        XCTAssertEqual(InterlinearMode.ignoresDiacritics.rawValue, 2)
    }
    
    func testIgnoresCaseAndDiacritics() {
        XCTAssertEqual(InterlinearMode.ignoresCaseAndDiacritics.rawValue, 3)
    }
    
    func testIgnoresPunctuation() {
        XCTAssertEqual(InterlinearMode.ignoresPunctuation.rawValue, 4)
    }
    
    func testIgnoresCaseAndPunctuation() {
        XCTAssertEqual(InterlinearMode.ignoresCaseAndPunctuation.rawValue, 5)
    }
    
    func testIgnoresDiacriticsAndPunctuation() {
        XCTAssertEqual(InterlinearMode.ignoresDiacriticsAndPunctuation.rawValue, 6)
    }
    
    func testIgnoresCaseDiacriticsAndPunctuation() {
        XCTAssertEqual(InterlinearMode.ignoresCaseDiacriticsAndPunctuation.rawValue, 7)
    }
}

