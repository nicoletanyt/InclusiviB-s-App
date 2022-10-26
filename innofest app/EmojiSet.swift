//
//  EmojiSet.swift
//  innofest app
//
//  Created by RYAN TUNG TZE-JIN on 26/10/22.
//

import Foundation

struct EmojiSet: Identifiable {
    var id = UUID()
    var name: String
    var emojis: [String]
}
