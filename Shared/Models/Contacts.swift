//
//  Contacts.swift
//  cv_rita
//
//  Created by stage on 13/06/2023.
//

import Foundation
import UIKit

struct Contacts: Identifiable {
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

extension Contacts {
    static let sampleData: [Contacts] =
        [
            Contacts(text: "07 49 57 53 15", image:"phone"),
            Contacts(text: "ritaclameira@gmail.com", image:"mail"),
            Contacts(text: "www.linkedin.com/in/rita-carrilho", image:"network.badge.shield.half.filled"),
            Contacts(text: "www.github.com/ritacarrilho", image:"network.badge.shield.half.filled"),
            Contacts(text: "ritacarrilho.github.io/rita-carrilho", image:"network.badge.shield.half.filled"),
            Contacts(text: "Perpignan", image:"house"),
            Contacts(text: "28 ans", image:"person"),
            Contacts(text: "Permis B", image:"car"),
        ]
}
