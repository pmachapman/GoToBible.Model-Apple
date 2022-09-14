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
    
    /// Render as an apparatus.
    /// This should be used with ApparatusRenderingParameters.
    case apparatus
    
    /// Renders as an apparatus in CSV based spreadsheet format.
    /// The columns are: Book,Chapter,Verse,Occurrence,Phrase,Variant.
    /// This should be used with SpreadsheetRenderingParameters. 
    case spreadsheet
}
