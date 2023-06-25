//
//  ExperienceView.swift
//  cv_rita
//
//  Created by Rita Carrilho on 25/06/2023.
//

import SwiftUI

struct ExperienceView: View {
    var exp: [Experience]
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 0){
//                    VStack{
//                        Text("Expérience").fontWeight(.heavy).font(.title)
//                    }
                    VStack {
                        ForEach(exp) { experience in
                            HStack{
                                Image(systemName: "star.bubble")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .padding(.trailing, 50)
                                VStack {
                                    Text(experience.job_title).fontWeight(.black)
                                    Text(experience.company_name).fontWeight(.regular)
                                    Text(experience.date+" "+experience.location ).fontWeight(.light)
                                }
                            }
                        }
                        .font(.headline)
                        .padding(30)
                        .foregroundColor(.gray)
                    }
                }
                    .ignoresSafeArea(.container, edges: .top)
                    .navigationBarTitle("Expérience", displayMode: .inline)
            }
        }
    }
}

struct ExperienceView_Previews: PreviewProvider {
    var exp: [Experience]
    static var previews: some View {
        ExperienceView(exp: Experience.sampleData)
    }
}
