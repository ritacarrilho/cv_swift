//
//  cv_ritaApp.swift
//  Shared
//
//  Created by stage on 13/06/2023.
//

import SwiftUI

@main
struct cv_ritaApp: App {
    var body: some Scene {
        WindowGroup {
            CvView(menus: Menu.sampleData, stacks: Stack.sampleData, exp: Experience.sampleData, formations: Formation.sampleData, contacts: Contacts.sampleData)
        }
    }
}
