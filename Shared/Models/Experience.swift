//
//  Experience.swift
//  cv_rita
//
//  Created by stage on 15/06/2023.
//

import Foundation
import UIKit

struct Experience: Identifiable {
    // object properties
    let id: UUID
    var date: String
    var company_name: String
    var job_title: String
    var location: String
    
    // constructor - UUID() generate identifier when instanciated
    init(id: UUID = UUID(), date: String, company_name: String, job_title: String, location: String) {
        self.id = id
        self.date = date
        self.company_name = company_name
        self.job_title = job_title
        self.location = location
    }
}

extension Experience {
    static let sampleData: [Experience] =
        [
            Experience(date: "2022/2023", company_name:"Opti Digital", job_title:"Full Stack apprentie", location:"Ceret, France"),
            Experience(date: "2022", company_name:"Agence Point Com", job_title:"Full Stack stagiaire", location:"Perpignan, France"),
            Experience(date: "2020", company_name:"Uma Pedra no Sapato", job_title:"Data Manager", location:"Portugal | Angleterre")
        ]
}
