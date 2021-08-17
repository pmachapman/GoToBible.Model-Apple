//
//  SwiftExtensions.swift
//
//  Swift-specific extension methods.
//
//  Created by Peter Chapman on 17/08/21.
//

extension String {
    var isBlank: Bool {
        return allSatisfy({ $0.isWhitespace })
    }
}
