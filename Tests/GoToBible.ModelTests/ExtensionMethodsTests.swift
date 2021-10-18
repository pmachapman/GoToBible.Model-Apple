//
//  ExtensionMethodsTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import XCTest
@testable import GoToBible_Model

final class ExtensionMethodsTests: XCTestCase {
    
    func testChapterReferenceAsPassageReference() {
        let chapterReference = ChapterReference(book: "1 John", chapter: 1)
        let expected = PassageReference(chapterReference: chapterReference, display: "1 John 1", highlightedVerses: [])
        XCTAssertEqual(chapterReference.asPassageReference(), expected)
    }
    
    func testStringAsPassageReference() {
        let expected = PassageReference(chapterReference: ChapterReference(book: "1 John", chapter: 1), display: "1 John 1:3,6-7,9-12", highlightedVerses: ["3", "6", "-", "7", "9", "-", "12"])
        XCTAssertEqual("1 John 1:3,6-7,9-12".asPassageReference(), expected)
    }
    
    func testStringAsPassageReferenceOneChapterBookIntroduction() {
        let expected = PassageReference(chapterReference: ChapterReference(book: "2 John", chapter: 0), display: "2 John 0", highlightedVerses: [])
        XCTAssertEqual("2 John 0".asPassageReference(), expected)
    }
    
    func testStringAsPassageReferenceOneChapterBookNoColon() {
        let expected = PassageReference(chapterReference: ChapterReference(book: "2 John", chapter: 1), display: "2 John 1", highlightedVerses: [])
        XCTAssertEqual("2 John 1".asPassageReference(), expected)
    }
    
    func testStringAsPassageReferenceOneChapterBookNoColonWithVerse() {
        let expected = PassageReference(chapterReference: ChapterReference(book: "2 John", chapter: 1), display: "2 John 1:1-2", highlightedVerses: ["1", "-", "2"])
        XCTAssertEqual("2 John 1-2".asPassageReference(), expected)
    }
    
    func testStringAsPassageReferenceOneChapterBookNoColonWithRange() {
        let expected = PassageReference(chapterReference: ChapterReference(book: "2 John", chapter: 1), display: "2 John 1:2", highlightedVerses: ["2"])
        XCTAssertEqual("2 John 2".asPassageReference(), expected)
    }
    
    func testStringAsPassageReferenceOneChapterBookWithColon() {
        let expected = PassageReference(chapterReference: ChapterReference(book: "2 John", chapter: 1), display: "2 John 1:1", highlightedVerses: ["1"])
        XCTAssertEqual("2 John 1:1".asPassageReference(), expected)
    }
    
    func testStringAsPassageReferenceWithLetters()
    {
        let expected = PassageReference(chapterReference: ChapterReference(book: "1 Kings", chapter: 12), display: "1 Kings 12:24b-24g,24y-25", highlightedVerses: ["24b", "-", "24g", "24y", "-", "25"])
        XCTAssertEqual("1 Kings 12:24b-24g,24y-25".asPassageReference(), expected)
    }
    
    func testAsUrl_RenderingParametersEmpty() {
        let renderingParameters = RenderingParameters()
        XCTAssertEqual(renderingParameters.asUrl(), URL(string: "https://goto.bible/"))
    }
    
    func testAsUrl_RenderingParametersOneTranslation() {
        var renderingParameters = RenderingParameters()
        renderingParameters.passageReference.display = "1 John 1:3,6-7"
        renderingParameters.primaryTranslation = "ESV"
        XCTAssertEqual(renderingParameters.asUrl(), URL(string: "https://goto.bible/1.John.1_3~6-7/ESV"))
    }
    
    func testAsUrl_RenderingParametersTwoTranslations() {
        var renderingParameters = RenderingParameters()
        renderingParameters.passageReference.display = "1 John 1:3,6-7"
        renderingParameters.primaryTranslation = "ESV"
        renderingParameters.secondaryTranslation = "NET"
        XCTAssertEqual(renderingParameters.asUrl(), URL(string: "https://goto.bible/1.John.1_3~6-7/ESV/NET"))
    }
    
    func testDecodePassageFromUrl() {
        XCTAssertEqual("/1.John.1_3~6-7/".decodePassageFromUrl(), "1 John 1:3,6-7")
    }
    
    func testEncodePassageFromUrl() {
        XCTAssertEqual("1 John 1:3,6-7".encodePassageForUrl(), "1.John.1_3~6-7")
    }
    
    func testGetBook() {
        XCTAssertEqual("1jn1:1".getBook(), "1 john")
    }
    
    func testGetBookWithBrackets() {
        XCTAssertEqual("est(greek)1:1".getBook(), "esther (greek)")
    }
    
    func testGetRanges() {
        let expected = ["1:1", "1:2", "...", "1:3", "1:4", "1:5", "...", "1:6"]
        XCTAssertEqual("1john1:1,2-3,4,5-6".getRanges(), expected)
    }
    
    func testNormaliseCommas() {
        XCTAssertEqual("1john1:1,2-3,4,5-6".normaliseCommas(), "1john1:1;1john1:2-3;1john1:4;1john1:5-6")
    }
    
    func testNormaliseSingleChapterReference() {
        XCTAssertEqual("jude1".normaliseSingleChapterReference(), "jude1:1")
    }
    
    func testNormaliseSingleChapterReferenceWithChapterAlreadySpecified() {
        XCTAssertEqual("jude1:1".normaliseSingleChapterReference(), "jude1:1")
    }
    
    func testNormaliseSingleChapterReferenceForBookBeginningWithNumber() {
        XCTAssertEqual("2john".normaliseSingleChapterReference(), "2john")
    }
    
    func testRenderCssBlank() {
        XCTAssertNotEqual(RenderingParameters().renderCss(), "")
    }
    
    func testSanitisePassageReference() {
        XCTAssertEqual("1 John 1.1‐2".sanitisePassageReference(), "1john1:1-2")
    }
    
    func testToHtml_Black() {
        XCTAssertEqual(RenderColour(r: 0, g: 0, b: 0).toHtml(), "#000000")
    }
    
    func testToHtml_Blue() {
        XCTAssertEqual(RenderColour(r: 0, g: 0, b: 255).toHtml(), "#0000FF")
    }
    
    func testToHtml_Green() {
        XCTAssertEqual(RenderColour(r: 0, g: 255, b: 0).toHtml(), "#00FF00")
    }
    
    func testToHtml_Red() {
        XCTAssertEqual(RenderColour(r: 255, g: 0, b: 0).toHtml(), "#FF0000")
    }
    
    func testToHtml_White() {
        XCTAssertEqual(RenderColour(r: 255, g: 255, b: 255).toHtml(), "#FFFFFF")
    }
}
