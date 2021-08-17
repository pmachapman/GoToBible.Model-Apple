//
//  BookTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import XCTest
@testable import GoToBible_Model

final class BookTests: XCTestCase {
    
    func testEmpty() {
        let book = Book()
        XCTAssertEqual(book.name, "")
        XCTAssertEqual(book.chapters.count, 0)
        XCTAssertEqual(book.description, "")
    }
    
    func testName() {
        var book = Book()
        book.name = "Genesis"
        XCTAssertEqual(book.name, "Genesis")
        XCTAssertEqual(book.chapters.count, 0)
        XCTAssertEqual(book.description, "Genesis")
    }
}
