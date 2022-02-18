//
//  TranslationTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import XCTest
@testable import GoToBibleModel

final class TranslationTests: XCTestCase {
    
    func testEmpty() {
        let translation = Translation()
        XCTAssertNil(translation.author)
        XCTAssertFalse(translation.canBeExported)
        XCTAssertEqual(translation.code, "")
        XCTAssertFalse(translation.commentary)
        XCTAssertNil(translation.copyright)
        XCTAssertEqual(translation.description, "")
        XCTAssertNil(translation.dialect)
        XCTAssertNil(translation.language)
        XCTAssertEqual(translation.provider, "")
        XCTAssertEqual(translation.name, "")
        XCTAssertEqual(translation.year, 0)
    }
    
    func testName() {
        var translation = Translation()
        translation.name = "KJV"
        XCTAssertNil(translation.author)
        XCTAssertFalse(translation.canBeExported)
        XCTAssertEqual(translation.code, "")
        XCTAssertFalse(translation.commentary)
        XCTAssertNil(translation.copyright)
        XCTAssertEqual(translation.description, "KJV")
        XCTAssertNil(translation.dialect)
        XCTAssertNil(translation.language)
        XCTAssertEqual(translation.provider, "")
        XCTAssertEqual(translation.name, "KJV")
        XCTAssertEqual(translation.year, 0)
    }
    
    func testNameAndLanguage() {
        var translation = Translation()
        translation.language = "English"
        translation.name = "KJV"
        XCTAssertNil(translation.author)
        XCTAssertFalse(translation.canBeExported)
        XCTAssertEqual(translation.code, "")
        XCTAssertFalse(translation.commentary)
        XCTAssertNil(translation.copyright)
        XCTAssertEqual(translation.description, "English: KJV")
        XCTAssertNil(translation.dialect)
        XCTAssertEqual(translation.language, "English")
        XCTAssertEqual(translation.provider, "")
        XCTAssertEqual(translation.name, "KJV")
        XCTAssertEqual(translation.year, 0)
    }
}
