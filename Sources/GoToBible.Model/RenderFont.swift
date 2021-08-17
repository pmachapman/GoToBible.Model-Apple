//
//  RenderFont.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

struct RenderFont: Codable, Equatable {
    var bold: Bool = false
    var familyName: String = ""
    var italic: Bool = false
    var sizeInPoints: Float = 0.0
    var strikeout: Bool = false
    var underline: Bool = false
}
