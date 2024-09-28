//
//  InterlinearModeTests.swift
//  
//
//  Created by Peter Chapman on 14/09/22.
//

import Testing
@testable import GoToBibleModel

struct InterlinearModeTests {
    
    @Test func testNone() {
        #expect(InterlinearMode.none.rawValue == 0)
    }
    
    @Test func testIgnoresCase() {
        #expect(InterlinearMode.ignoresCase.rawValue == 1)
    }
    
    @Test func testIgnoresDiacritics() {
        #expect(InterlinearMode.ignoresDiacritics.rawValue == 2)
    }
    
    @Test func testIgnoresCaseAndDiacritics() {
        #expect(InterlinearMode.ignoresCaseAndDiacritics.rawValue == 3)
    }
    
    @Test func testIgnoresPunctuation() {
        #expect(InterlinearMode.ignoresPunctuation.rawValue == 4)
    }
    
    @Test func testIgnoresCaseAndPunctuation() {
        #expect(InterlinearMode.ignoresCaseAndPunctuation.rawValue == 5)
    }
    
    @Test func testIgnoresDiacriticsAndPunctuation() {
        #expect(InterlinearMode.ignoresDiacriticsAndPunctuation.rawValue == 6)
    }
    
    @Test func testIgnoresCaseDiacriticsAndPunctuation() {
        #expect(InterlinearMode.ignoresCaseDiacriticsAndPunctuation.rawValue == 7)
    }
}

