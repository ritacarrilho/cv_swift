//
//  ContentView.swift
//  Shared
//
//  Created by stage on 13/06/2023.
//

import SwiftUI

struct CvView: View {
    
    let menus: [Menu]
    var stacks: [Stack]
    var exp: [Experience]
    var formations: [Formation]
    var contacts: [Contacts]
    
    var body: some View {
        NavigationView{
            VStack(spacing: 0){
                VStack{
                    Circle()
                        .strokeBorder(lineWidth: 2)
                        .frame(width: 1000, height: 100)
                    VStack{
                        Text("Rita Carrilho")
                            .font(.headline)
                        Text("Développeuse Full-Stack")
                            .font(.headline)
                            .padding(10)
                        Text("Passionnée par la technologie, l'IA et le développement durable.")
                            .font(.body)
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                    }
                }
                    .padding(.bottom, 30)
                    .padding(.top, 50)
                    .background(.cyan)
                    .foregroundColor(.black)
                
                VStack(spacing: 0){
//                        Text("Resume")
                    MenuView(menu: menus, stacks: stacks, exp: exp, formations: formations, contacts: contacts)
                }.background(.white)
            }.ignoresSafeArea(.container, edges: .top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var menu = Menu.sampleData
    static var previews: some View {
        CvView(menus: menu, stacks: Stack.sampleData, exp: Experience.sampleData, formations: Formation.sampleData, contacts: Contacts.sampleData)
    }
}


