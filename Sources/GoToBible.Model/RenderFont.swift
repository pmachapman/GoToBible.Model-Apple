//
//  RenderFont.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

public struct RenderFont: Codable, Equatable {
    public var bold: Bool = false
    public var familyName: String = ""
    public var italic: Bool = false
    public var sizeInPoints: Float = 0.0
    public var strikeout: Bool = false
    public var underline: Bool = false
}
