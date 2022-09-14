//
//  InterlinearMode.swift
//  
//
//  Created by Peter Chapman on 14/09/22.
//

/// The interlinear mode.
public enum InterlinearMode: Int, Codable {
    
    /// No special interlinear settings.
    case none
    
    /// The interlinear ignores case.
    case ignoresCase
    
    /// The interlinear ignores diacritics.
    case ignoresDiacritics
    
    /// The interlinear ignores case and diacritics.
    case ignoresCaseAndDiacritics
    
    /// The interlinear ignores punctuation.
    case ignoresPunctuation
    
    /// The interlinear ignores case and punctuation.
    case ignoresCaseAndPunctuation
    
    /// The interlinear ignores diacritics and punctuation.
    case ignoresDiacriticsAndPunctuation
    
    /// The interlinear ignores case, diacritics, and punctuation.
    case ignoresCaseDiacriticsAndPunctuation
}
