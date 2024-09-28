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
        return switch self.uppercased() {
        case "ENGLISH":
            "!1-\(self)"
        case "GREEK":
            "!2-\(self)"
        case "HEBREW":
            "!3-\(self)"
        case "LATIN":
            "!4-\(self)"
        case "":
            "!5"
        default:
            self;
        }
    }
}
