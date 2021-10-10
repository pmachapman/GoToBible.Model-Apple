//
//  LanguageComparer.swift
//  
//
//  Created by Peter Chapman on 11/10/21.
//

import Foundation

public extension String {
    func compareLanguage(_ value: String) -> ComparisonResult {
        return self.getCustomSortValue().caseInsensitiveCompare(value.getCustomSortValue())
    }
    
    private func getCustomSortValue() -> String {
        switch self.uppercased() {
        case "ENGLISH":
            return "!1-\(self)"
        case "GREEK":
            return "!2-\(self)"
        case "HEBREW":
            return "!3-\(self)"
        case "LATIN":
            return "!4-\(self)"
        default:
            return self;
        }
    }
}
