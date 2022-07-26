//
//  Intro.swift
//  PageView
//
//  Created by leila on 26.07.2022.
//

import Foundation

struct Intro: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
    
    
    static func getIntros() -> [Intro] {
        
        [
            Intro(image: "hero", title: "Choose your favorite menu", description: "But they are not the inconveniece that our pleasure"),
            Intro(image: "kids", title: "Finnd the best price", description: "But they are not the inconveniece that our pleasure"),
            Intro(image: "study", title: "Choose your favorite lesson", description: "But they are not the inconveniece that our pleasure"),
            Intro(image: "touch", title: "Touch the page", description: "But they are not the inconveniece that our pleasure"),
            Intro(image: "woman", title: "Choose your favorite office", description: "But they are not the inconveniece that our pleasure")
        ]
        
    }
}
