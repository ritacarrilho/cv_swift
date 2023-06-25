//
//  Competences.swift
//  cv_rita
//
//  Created by stage on 15/06/2023.
//

import Foundation
import UIKit

struct Competences: Identifiable {
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

extension Competences {
    static let sampleData: [Competences] =
        [
            Competences(text: "Competences", image:"settings"),
            Competences(text: "Expérience", image:"star.bubble"),
            Competences(text: "Formations", image:"star.bubble"),
            Competences(text: "Langues", image:"pencil"),
            Competences(text: "Projects", image:"star.bubble"),
            Competences(text: "Contact", image:"phone"),
        ]
}
