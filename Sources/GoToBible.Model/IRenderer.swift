//
//  IRenderer.swift
//  
//
//  Created by Peter Chapman on 11/10/21.
//

public protocol IRenderer {
    var providers: [IProvider] { get set }
    func render(parameters: RenderingParameters, renderCompleteHtmlPage: Bool) -> RenderedPassage
}
