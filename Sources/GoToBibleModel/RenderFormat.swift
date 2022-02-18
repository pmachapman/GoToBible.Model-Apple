//
//  RenderFormat.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

/// The format to render in.
public enum RenderFormat: Int, Codable {
    
    /// Render as text.
    case text
    
    /// Render as HTML.
    case html
    
    /// Render for import into Accordance.
    case accordance
}
