//
//  PassageReference.swift
//  
//
//  Created by Peter Chapman on 17/08/21.
//

/// A passage reference.
public struct PassageReference: Codable, Equatable {
    
    /// Gets or sets the chapter reference.
    public var chapterReference = ChapterReference()
    
    /// Gets or sets the passage reference to display.
    public var display: String = ""
    
    /// Gets or sets the highlighted verses.
    /// - Remark:
    /// This may be in the format of individual verse numbers (v1.0 format),
    ///     i.e. `1,2,3,4,5`
    /// or a starting number, followed by a hypen, then an ending number (v1.2 format),
    ///     i.e. `1,-,5`
    /// The values may include letters,
    ///     i.e. `24g,-,25`
    /// but not colons, commas, or any other characters.
    public var highlightedVerses: [String] = []
    
    /// Gets a value indicating whether this instance is valid.
    /// - Remark: We only require the chapter reference. This method assumes you used `AsPassageReference` to generate this object.
    public var isValid: Bool {
        return self.chapterReference.isValid
    }
}
