//
//  BookTests.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

import Testing
@testable import GoToBibleModel

struct BookTests {
    
    @Test func testEmpty() {
        let book = Book()
        #expect(book.name == "")
        #expect(book.chapters.count == 0)
        #expect(book.description == "")
    }
    
    @Test func testName() {
        var book = Book()
        book.name = "Genesis"
        #expect(book.name == "Genesis")
        #expect(book.chapters.count == 0)
        #expect(book.description == "Genesis")
    }
}
