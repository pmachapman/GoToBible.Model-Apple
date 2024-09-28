//
//  TranslationTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import Testing
@testable import GoToBibleModel

struct TranslationTests {
    
    @Test func testEmpty() {
        let translation = Translation()
        #expect(translation.author == nil)
        #expect(!translation.canBeExported)
        #expect(translation.code == "")
        #expect(!translation.commentary)
        #expect(translation.copyright == nil)
        #expect(translation.description == "")
        #expect(translation.dialect == nil)
        #expect(translation.language == nil)
        #expect(translation.provider == "")
        #expect(translation.name == "")
        #expect(translation.year == 0)
    }
    
    @Test func testName() {
        var translation = Translation()
        translation.name = "KJV"
        #expect(translation.author == nil)
        #expect(!translation.canBeExported)
        #expect(translation.code == "")
        #expect(!translation.commentary)
        #expect(translation.copyright == nil)
        #expect(translation.description == "KJV")
        #expect(translation.dialect == nil)
        #expect(translation.language == nil)
        #expect(translation.provider == "")
        #expect(translation.name == "KJV")
        #expect(translation.year == 0)
    }
    
    @Test func testNameAndLanguage() {
        var translation = Translation()
        translation.language = "English"
        translation.name = "KJV"
        #expect(translation.author == nil)
        #expect(!translation.canBeExported)
        #expect(translation.code == "")
        #expect(!translation.commentary)
        #expect(translation.copyright == nil)
        #expect(translation.description == "English: KJV")
        #expect(translation.dialect == nil)
        #expect(translation.language == "English")
        #expect(translation.provider == "")
        #expect(translation.name == "KJV")
        #expect(translation.year == 0)
    }
}
