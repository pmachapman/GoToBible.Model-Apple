//
//  RenderColour.swift
//
//  Note: The order of the properties is important for serialisation.
//
//  Created by Peter Chapman on 17/08/21.
//

/// The colour to render with.
/// - Remark: The order of the properties is important for serialisation.
public struct RenderColour: Codable, Equatable {
    
    /// Gets or sets the red value.
    public var r: UInt8 = 0
    
    /// Gets or sets the green value.
    public var g: UInt8 = 0
    
    /// Gets or sets the blue value.
    public var b: UInt8 = 0
}
