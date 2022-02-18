//
//  LanguageComparerTests.swift
//  
//
//  Created by Peter Chapman on 11/10/21.
//

import XCTest
@testable import GoToBibleModel

final class LanguageComparerTests: XCTestCase {
    
    func testSortOrder() {
        let actual = [
            "",
            "German",
            "Latin",
            "Aramaic",
            "Greek",
            "French",
            "English",
            "Ugaritic",
            "Hebrew",
        ]
        let expected = [
            "English",
            "Greek",
            "Hebrew",
            "Latin",
            "",
            "Aramaic",
            "French",
            "German",
            "Ugaritic",
        ]
        XCTAssertEqual(actual.sorted(by: { (s1, s2) -> Bool in
            return s1.compareLanguage(s2) == .orderedAscending
        }), expected)
    }
}
