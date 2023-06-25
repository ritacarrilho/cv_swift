//
//  Menu.swift
//  cv_rita
//
//  Created by stage on 14/06/2023.
//

import Foundation
import UIKit

struct Menu: Identifiable {
    // object properties
    let id: UUID
    var text: String
    var image: String
    var view: String
    
    // constructor - UUID() generate identifier when instanciated
    init(id: UUID = UUID(), text: String, image: String, view: String) {
        self.id = id
        self.text = text
        self.image = image
        self.view = view
    }
}

extension Menu {
    static let sampleData: [Menu] =
        [
            Menu(text: "Competences", image:"exp", view: "CompetencesView"),
            Menu(text: "Expérience", image:"skills", view: "ExperienceView"),
            Menu(text: "Formations", image:"formation", view: "FormationsView"),
//            Menu(text: "Projects", image:"clock"),
            Menu(text: "Contact", image:"contact", view:"ContactsView"),
        ]
}
