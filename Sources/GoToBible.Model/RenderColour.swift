//
//  RenderColour.swift
//
//  Note: The order of the properties is important for serialisation.
//
//  Created by Peter Chapman on 17/08/21.
//

struct RenderColour: Codable, Equatable {
    var r: UInt8 = 0
    var g: UInt8 = 0
    var b: UInt8 = 0
}
