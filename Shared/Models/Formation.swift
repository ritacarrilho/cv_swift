//
//  Formation.swift
//  cv_rita
//
//  Created by Rita Carrilho on 25/06/2023.
//

import Foundation
import UIKit

struct Formation: Identifiable {
    // object properties
    let id: UUID
    var date: String
    var school: String
    var title: String
    var location: String
    
    // constructor - UUID() generate identifier when instanciated
    init(id: UUID = UUID(), date: String, school: String, title: String, location: String) {
        self.id = id
        self.date = date
        self.school = school
        self.title = title
        self.location = location
    }
}

extension Formation {
    static let sampleData: [Formation] =
        [
            Formation(date: "2022/2023", school:"L'idem", title:"Licence Concepteur Développeur d'Applications", location:"Le Soler, France"),
            Formation(date: "2022", school:"L'idem", title:"Développement Web et Web Mobile", location:"Le Soler, France"),
            Formation(date: "2013/2016", school:"Universidade da Beira Interior", title:"Licence Cinéma", location:"Covilha, Portugal")
        ]
}
