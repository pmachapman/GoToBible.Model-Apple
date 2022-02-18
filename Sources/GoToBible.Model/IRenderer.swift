//
//  IRenderer.swift
//  
//
//  Created by Peter Chapman on 11/10/21.
//

/// The renderer interface.
public protocol IRenderer {
    
    /// Gets or sets the providers.
    /// - Remark: These can be all disposed by the renderer.
    var providers: [IProvider] { get set }
    
    /// Renders the specified parameters.
    /// - Parameter parameters: The rendering parameters.
    /// - Parameter renderCompleteHtmlPage: If set to <c>true</c>, render the complete HTML page.
    /// - Returns: The output of the rendering.
    func render(parameters: RenderingParameters, renderCompleteHtmlPage: Bool) -> RenderedPassage
}
