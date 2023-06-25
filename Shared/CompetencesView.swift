//
//  CompetencesView.swift
//  cv_rita
//
//  Created by stage on 15/06/2023.
//

import SwiftUI

struct CompetencesView: View {
    let stacks: [Stack]
    let soft_skills = ["Détermination", "Curiosité", "Persévérance"]
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 0){
                    VStack{
                        Text("Skills").fontWeight(.black)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack (spacing: 0){
                                ForEach(stacks) { stack in
                                    VStack(){
                                        Image(stack.image)
                                            .resizable()
                                            .scaledToFit()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 40, height: 40)
                                        Text(stack.text)
                                            .background(.white)
                                    }
                                    .frame(width: 100, height: 100)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .shadow(color: Color.black.opacity(0.2), radius: 1, x: 2, y: 2)
                                    .padding()
                                }
                            }
                        }
                    }.padding(.top, 15)
                    
                    VStack{
                        Text("Outils").fontWeight(.black)
                        HStack (spacing: 0){
                            Text("OS: ").fontWeight(.bold).multilineTextAlignment(.center)
                            Text("Ubuntu, Windows, Mac").multilineTextAlignment(.center)
                        }.padding(.top, 5)
                        HStack (spacing: 0){
                            Text("Conteneurisation: ").fontWeight(.bold).multilineTextAlignment(.center)
                            Text("Docker").multilineTextAlignment(.center)
                        }.padding(.top, 5)
                        HStack (spacing: 0){
                            Text("Logiciel: ").fontWeight(.bold).multilineTextAlignment(.center)
                            Text("Git, Notion, Unity, Postman, Workbench, Figma").multilineTextAlignment(.center)
                        }.padding(.top, 5)
                        HStack (spacing: 0){
                            Text("Cloud: ").fontWeight(.bold).multilineTextAlignment(.center)
                            Text("Google Cloud Platform, Big Query, Terraform").multilineTextAlignment(.center)
                        }.padding(.top, 5)
                        
                        
                    }.padding(.top, 35)
                    
                    VStack{
                        Text("Atouts").fontWeight(.black)
                        ForEach(soft_skills, id: \.self) { item in
                            HStack (spacing: 0){
                                Image(systemName: "chevron.forward")
                                    .resizable()
                                    .frame(width: 10, height: 10)
                                    .padding(.trailing, 25)
                                Text(item)
                            }
                        }
                    }.padding(.top, 35)
                    
                    VStack{
                        Text("Langues").fontWeight(.black)
                        HStack{
                            VStack {
                                Image("portuguese")
                                    .resizable()
                                    .frame(width: 25, height: 25)
//                                        .padding(.trailing, 30)
                                Text("Portugais")
                            } .frame(width: 100, height: 100)
                                .background(Color.white)
                                .cornerRadius(20)
                                .shadow(color: Color.black.opacity(0.2), radius: 1, x: 2, y: 2)
                                .padding(5)
                            VStack {
                                Image("english")
                                    .resizable()
                                    .frame(width: 25, height: 25)
//                                        .padding(.trailing, 30)
                                Text("Anglais")
                            } .frame(width: 100, height: 100)
                                .background(Color.white)
                                .cornerRadius(20)
                                .shadow(color: Color.black.opacity(0.2), radius: 1, x: 2, y: 2)
                                .padding(5)
                            VStack {
                                Image("france")
                                    .resizable()
                                    .frame(width: 25, height: 25)
//                                        .padding(.trailing, 30)
                                Text("Français")
                            } .frame(width: 100, height: 100)
                                .background(Color.white)
                                .cornerRadius(20)
                                .shadow(color: Color.black.opacity(0.2), radius: 1, x: 2, y: 2)
                                .padding(5)
                        }
                    }.padding(.top, 35)
                }
                .ignoresSafeArea(.container, edges: .top)
                .navigationBarTitle("Compétences", displayMode: .inline)
            }
        }
    }
}

struct CompetencesView_Previews: PreviewProvider {
    static var previews: some View {
        CompetencesView(stacks: Stack.sampleData)
    }
}
