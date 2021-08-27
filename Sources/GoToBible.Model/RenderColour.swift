//
//  RenderColour.swift
//
//  Note: The order of the properties is important for serialisation.
//
//  Created by Peter Chapman on 17/08/21.
//

public struct RenderColour: Codable, Equatable {
    public var r: UInt8 = 0
    public var g: UInt8 = 0
    public var b: UInt8 = 0
}
