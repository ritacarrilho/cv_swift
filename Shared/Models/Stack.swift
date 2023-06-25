//
//  Stack.swift
//  cv_rita
//
//  Created by stage on 13/06/2023.
//

import Foundation
import UIKit

struct Stack: Identifiable {
    // object properties
    let id: UUID
    var text: String
    var image: String
    
    // constructor - UUID() generate identifier when instanciated
    init(id: UUID = UUID(), text: String, image: String) {
        self.id = id
        self.text = text
        self.image = image
    }
}

extension Stack {
    static let sampleData: [Stack] =
        [
            Stack(text: "Python", image:"python"),
            Stack(text: "Javascript", image:"javascript"),
            Stack(text: "C#", image:"Csharp"),
            Stack(text: "MySQL", image:"mysql"),
            Stack(text: "PHP", image:"php"),
            Stack(text: "Java", image:"java"),
            Stack(text: "Flutter", image:"flutter"),
            Stack(text: "HTML", image:"html"),
            Stack(text: "CSS", image:"css"),
            Stack(text: "Symfony", image:"symfony"),
            Stack(text: "React", image:"react"),
            Stack(text: "Vue", image:"vue"),
            Stack(text: "Swift", image:"swift"),
            Stack(text: "Kotlin", image:"kotlin"),
        ]
}
