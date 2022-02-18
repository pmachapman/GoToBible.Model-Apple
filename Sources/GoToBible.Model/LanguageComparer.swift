//
//  LanguageComparer.swift
//  
//
//  Created by Peter Chapman on 11/10/21.
//

import Foundation

public extension String {
    
    /// A comparer to sort the languages with English then Greek at the top.
    /// - Parameter value: The string value to sort.
    /// - Returns: The comparison result.
    func compareLanguage(_ value: String) -> ComparisonResult {
        return self.getCustomSortValue().caseInsensitiveCompare(value.getCustomSortValue())
    }
    
    /// Gets the custom sort value.
    /// - Returns: The custom sort value.
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
        case "":
            return "!5"
        default:
            return self;
        }
    }
}
