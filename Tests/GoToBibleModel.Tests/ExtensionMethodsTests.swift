//
//  ExtensionMethodsTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import Foundation
import Testing
@testable import GoToBibleModel

struct ExtensionMethodsTests {
    
    @Test func testChapterReferenceAsPassageReference() {
        let chapterReference = ChapterReference(book: "1 John", chapter: 1)
        let expected = PassageReference(chapterReference: chapterReference, display: "1 John 1", highlightedVerses: [])
        #expect(chapterReference.asPassageReference() == expected)
    }
    
    @Test func testStringAsPassageReference() {
        let expected = PassageReference(chapterReference: ChapterReference(book: "1 John", chapter: 1), display: "1 John 1:3,6-7,9-12", highlightedVerses: ["3", "6", "-", "7", "9", "-", "12"])
        #expect("1 John 1:3,6-7,9-12".asPassageReference() == expected)
    }
    
    @Test func testStringAsPassageReferenceOneChapterBookIntroduction() {
        let expected = PassageReference(chapterReference: ChapterReference(book: "2 John", chapter: 0), display: "2 John 0", highlightedVerses: [])
        #expect("2 John 0".asPassageReference() == expected)
    }
    
    @Test func testStringAsPassageReferenceOneChapterBookNoColon() {
        let expected = PassageReference(chapterReference: ChapterReference(book: "2 John", chapter: 1), display: "2 John 1", highlightedVerses: [])
        #expect("2 John 1".asPassageReference() == expected)
    }
    
    @Test func testStringAsPassageReferenceOneChapterBookNoColonWithVerse() {
        let expected = PassageReference(chapterReference: ChapterReference(book: "2 John", chapter: 1), display: "2 John 1:1-2", highlightedVerses: ["1", "-", "2"])
        #expect("2 John 1-2".asPassageReference() == expected)
    }
    
    @Test func testStringAsPassageReferenceOneChapterBookNoColonWithRange() {
        let expected = PassageReference(chapterReference: ChapterReference(book: "2 John", chapter: 1), display: "2 John 1:2", highlightedVerses: ["2"])
        #expect("2 John 2".asPassageReference() == expected)
    }
    
    @Test func testStringAsPassageReferenceOneChapterBookWithColon() {
        let expected = PassageReference(chapterReference: ChapterReference(book: "2 John", chapter: 1), display: "2 John 1:1", highlightedVerses: ["1"])
        #expect("2 John 1:1".asPassageReference() == expected)
    }
    
    @Test func testStringAsPassageReferenceWithLetters()
    {
        let expected = PassageReference(chapterReference: ChapterReference(book: "1 Kings", chapter: 12), display: "1 Kings 12:24b-24g,24y-25", highlightedVerses: ["24b", "-", "24g", "24y", "-", "25"])
        #expect("1 Kings 12:24b-24g,24y-25".asPassageReference() == expected)
    }
    
    @Test func testAsUrl_RenderingParametersEmpty() {
        let renderingParameters = RenderingParameters()
        #expect(renderingParameters.asUrl() == URL(string: "https://goto.bible/"))
    }
    
    @Test func testAsUrl_RenderingParametersOneTranslation() {
        var renderingParameters = RenderingParameters()
        renderingParameters.passageReference.display = "1 John 1:3,6-7"
        renderingParameters.primaryTranslation = "ESV"
        #expect(renderingParameters.asUrl() == URL(string: "https://goto.bible/1.John.1_3~6-7/ESV"))
    }
    
    @Test func testAsUrl_RenderingParametersOneTranslationInterlinearMode() {
        var renderingParameters = RenderingParameters()
        renderingParameters.passageReference.display = "1 John 1:3,6-7"
        renderingParameters.primaryTranslation = "ESV"
        renderingParameters.interlinearIgnoresCase = true
        renderingParameters.interlinearIgnoresDiacritics = true
        renderingParameters.interlinearIgnoresPunctuation = false
        #expect(renderingParameters.asUrl() == URL(string: "https://goto.bible/1.John.1_3~6-7/ESV"))
    }
    
    @Test func testAsUrl_RenderingParametersTwoTranslations() {
        var renderingParameters = RenderingParameters()
        renderingParameters.passageReference.display = "1 John 1:3,6-7"
        renderingParameters.primaryTranslation = "ESV"
        renderingParameters.secondaryTranslation = "NET"
        #expect(renderingParameters.asUrl() == URL(string: "https://goto.bible/1.John.1_3~6-7/ESV/NET"))
    }
    
    @Test func testAsUrl_RenderingParametersTwoTranslationsInterlinearMode() {
        var renderingParameters = RenderingParameters()
        renderingParameters.passageReference.display = "1 John 1:3,6-7"
        renderingParameters.primaryTranslation = "ESV"
        renderingParameters.secondaryTranslation = "NET"
        renderingParameters.interlinearIgnoresCase = true
        renderingParameters.interlinearIgnoresDiacritics = true
        renderingParameters.interlinearIgnoresPunctuation = true
        #expect(renderingParameters.asUrl() == URL(string: "https://goto.bible/1.John.1_3~6-7/ESV/NET?settings=7"))
    }
    
    @Test func testDecodePassageFromUrl() {
        #expect("/1.John.1_3~6-7/".decodePassageFromUrl() == "1 John 1:3,6-7")
    }
    
    @Test func testDecodePassageWithBracketsFromUrl() {
        #expect("/Daniel.(Greek).1/".decodePassageFromUrl() == "Daniel (Greek) 1")
    }
    
    @Test func testEncodePassageFromUrl() {
        #expect("1 John 1:3,6-7".encodePassageForUrl() == "1.John.1_3~6-7")
    }
    
    @Test func testEncodePassageWithBracketsFromUrl() {
        #expect("Daniel (Greek) 1".encodePassageForUrl() == "Daniel.(Greek).1")
    }
    
    @Test func testGetBook() {
        #expect("1jn1:1".getBook() == "1 john")
    }
    
    @Test func testGetBookWithBrackets() {
        #expect("est(greek)1:1".getBook() == "esther (greek)")
    }
    
    @Test func testGetInterlinearMode_None() {
        var renderingParameters = RenderingParameters()
        renderingParameters.interlinearIgnoresCase = false
        renderingParameters.interlinearIgnoresDiacritics = false
        renderingParameters.interlinearIgnoresPunctuation = false
        #expect(renderingParameters.getInterlinearMode() == InterlinearMode.none)
    }
    
    @Test func testGetInterlinearMode_IgnoreCase() {
        var renderingParameters = RenderingParameters()
        renderingParameters.interlinearIgnoresCase = true
        renderingParameters.interlinearIgnoresDiacritics = false
        renderingParameters.interlinearIgnoresPunctuation = false
        #expect(renderingParameters.getInterlinearMode() == InterlinearMode.ignoresCase)
    }
    
    @Test func testGetInterlinearMode_IgnoreDiacritics() {
        var renderingParameters = RenderingParameters()
        renderingParameters.interlinearIgnoresCase = false
        renderingParameters.interlinearIgnoresDiacritics = true
        renderingParameters.interlinearIgnoresPunctuation = false
        #expect(renderingParameters.getInterlinearMode() == InterlinearMode.ignoresDiacritics)
    }
    
    @Test func testGetInterlinearMode_IgnoreCaseAndDiacritics() {
        var renderingParameters = RenderingParameters()
        renderingParameters.interlinearIgnoresCase = true
        renderingParameters.interlinearIgnoresDiacritics = true
        renderingParameters.interlinearIgnoresPunctuation = false
        #expect(renderingParameters.getInterlinearMode() == InterlinearMode.ignoresCaseAndDiacritics)
    }
    
    @Test func testGetInterlinearMode_IgnorePunctuation() {
        var renderingParameters = RenderingParameters()
        renderingParameters.interlinearIgnoresCase = false
        renderingParameters.interlinearIgnoresDiacritics = false
        renderingParameters.interlinearIgnoresPunctuation = true
        #expect(renderingParameters.getInterlinearMode() == InterlinearMode.ignoresPunctuation)
    }
    
    @Test func testGetInterlinearMode_IgnoreCaseAndPunctuation() {
        var renderingParameters = RenderingParameters()
        renderingParameters.interlinearIgnoresCase = true
        renderingParameters.interlinearIgnoresDiacritics = false
        renderingParameters.interlinearIgnoresPunctuation = true
        #expect(renderingParameters.getInterlinearMode() == InterlinearMode.ignoresCaseAndPunctuation)
    }
    
    @Test func testGetInterlinearMode_IgnoreDiacriticsAndPunctuation() {
        var renderingParameters = RenderingParameters()
        renderingParameters.interlinearIgnoresCase = false
        renderingParameters.interlinearIgnoresDiacritics = true
        renderingParameters.interlinearIgnoresPunctuation = true
        #expect(renderingParameters.getInterlinearMode() == InterlinearMode.ignoresDiacriticsAndPunctuation)
    }
    
    @Test func testGetInterlinearMode_IgnoreCaseDiacriticsAndPunctuation() {
        var renderingParameters = RenderingParameters()
        renderingParameters.interlinearIgnoresCase = true
        renderingParameters.interlinearIgnoresDiacritics = true
        renderingParameters.interlinearIgnoresPunctuation = true
        #expect(renderingParameters.getInterlinearMode() == InterlinearMode.ignoresCaseDiacriticsAndPunctuation)
    }
    
    @Test func testGetRanges() {
        let expected = ["1:1", "1:2", "...", "1:3", "1:4", "1:5", "...", "1:6"]
        #expect("1john1:1,2-3,4,5-6".getRanges() == expected)
    }
    
    @Test func testNormaliseCommas() {
        #expect("1john1:1,2-3,4,5-6".normaliseCommas() == "1john1:1;1john1:2-3;1john1:4;1john1:5-6")
    }
    
    @Test func testNormaliseSingleChapterReference() {
        #expect("jude1".normaliseSingleChapterReference() == "jude1:1")
    }
    
    @Test func testNormaliseSingleChapterReferenceWithChapterAlreadySpecified() {
        #expect("jude1:1".normaliseSingleChapterReference() == "jude1:1")
    }
    
    @Test func testNormaliseSingleChapterReferenceForBookBeginningWithNumber() {
        #expect("2john".normaliseSingleChapterReference() == "2john")
    }
    
    @Test func testRenderCssBlank() {
        #expect(RenderingParameters().renderCss() != "")
    }
    
    @Test func testSanitisePassageReference() {
        #expect("1 John 1.1‐2".sanitisePassageReference() == "1john1:1-2")
    }
    
    @Test func testToHtml_Black() {
        #expect(RenderColour(r: 0, g: 0, b: 0).toHtml() == "#000000")
    }
    
    @Test func testToHtml_Blue() {
        #expect(RenderColour(r: 0, g: 0, b: 255).toHtml() == "#0000FF")
    }
    
    @Test func testToHtml_Green() {
        #expect(RenderColour(r: 0, g: 255, b: 0).toHtml() == "#00FF00")
    }
    
    @Test func testToHtml_Red() {
        #expect(RenderColour(r: 255, g: 0, b: 0).toHtml() == "#FF0000")
    }
    
    @Test func testToHtml_White() {
        #expect(RenderColour(r: 255, g: 255, b: 255).toHtml() == "#FFFFFF")
    }
}
