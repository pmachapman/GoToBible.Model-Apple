//
//  SwiftExtensions.swift
//
//  Swift-specific extension methods.
//
//  Created by Peter Chapman on 17/08/21.
//

import Foundation

extension String {
    
    /**
     * Escapes a data string for use in a URL segment.
     */
    var escapeDataString: String {
        let allowedCharacterSet = CharacterSet.alphanumerics.union(CharacterSet(charactersIn: "~-_."))
        return self.addingPercentEncoding(withAllowedCharacters: allowedCharacterSet) ?? ""
    }
    
    /**
     * Checkes whether the string is blank or empty.
     */
    var isBlank: Bool {
        return allSatisfy({ $0.isWhitespace })
    }
}

/**
 * These subscript extensions allow for use of Ints for Indices.
 *
 * See: https://stackoverflow.com/a/24144365
 */
extension StringProtocol {
    subscript(offset: Int) -> Character { self[index(startIndex, offsetBy: offset)] }
    subscript(range: Range<Int>) -> SubSequence {
        let startIndex = index(self.startIndex, offsetBy: range.lowerBound)
        return self[startIndex..<index(startIndex, offsetBy: range.count)]
    }
    subscript(range: ClosedRange<Int>) -> SubSequence {
        let startIndex = index(self.startIndex, offsetBy: range.lowerBound)
        return self[startIndex..<index(startIndex, offsetBy: range.count)]
    }
    subscript(range: PartialRangeFrom<Int>) -> SubSequence { self[index(startIndex, offsetBy: range.lowerBound)...] }
    subscript(range: PartialRangeThrough<Int>) -> SubSequence { self[...index(startIndex, offsetBy: range.upperBound)] }
    subscript(range: PartialRangeUpTo<Int>) -> SubSequence { self[..<index(startIndex, offsetBy: range.upperBound)] }
}
