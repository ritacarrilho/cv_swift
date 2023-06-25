//
//  MenuView.swift
//  cv_rita
//
//  Created by stage on 15/06/2023.
//

import SwiftUI

struct MenuView: View {
    var menu: [Menu]
    var stacks: [Stack]
    var exp: [Experience]
    var formations: [Formation]
    var contacts: [Contacts]
    
    var body: some View {
        List {
            NavigationLink(destination: CompetencesView(stacks: stacks)){
            HStack {
                Image("exp")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(.trailing, 30)
                Text("Compétences")
                }
            .font(.headline)
            .padding(30)
            .foregroundColor(.gray)
            } .listStyle(GroupedListStyle())
            
            NavigationLink(destination: ExperienceView(exp: exp)){
            HStack {
                Image("skills")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(.trailing, 30)
                Text("Expérience")
                }
            .font(.headline)
            .padding(30)
            .foregroundColor(.gray)
            } .listStyle(GroupedListStyle())
            
            NavigationLink(destination: FormationsView(formations: formations)){
            HStack {
                Image("formation")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(.trailing, 30)
                Text("Formation")
                }
            .font(.headline)
            .padding(30)
            .foregroundColor(.gray)
            } .listStyle(GroupedListStyle())
            
            NavigationLink(destination: ContactsView(contacts: contacts)){
            HStack {
                Image("contact")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(.trailing, 30)
                Text("Contact")
                }
            .font(.headline)
            .padding(30)
            .foregroundColor(.gray)
            } .listStyle(GroupedListStyle())
        } .listStyle(GroupedListStyle())
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(menu: Menu.sampleData, stacks: Stack.sampleData, exp: Experience.sampleData, formations: Formation.sampleData, contacts: Contacts.sampleData)
    }
}
