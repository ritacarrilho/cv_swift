//
//  FormationsView.swift
//  cv_rita
//
//  Created by Rita Carrilho on 25/06/2023.
//

import SwiftUI

struct FormationsView: View{
let formations: [Formation]
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 0){
//                    VStack{
//                        Text("Expérience").fontWeight(.heavy).font(.title)
//                    }
                    VStack(alignment: .leading) {
                        ForEach(formations) { formation in
                            HStack{
                                Image("formation")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding(.trailing, 30)
                                VStack {
                                    Text(formation.title).fontWeight(.black).multilineTextAlignment(.center)
                                    Text(formation.school).fontWeight(.regular).multilineTextAlignment(.center)
                                    Text(formation.date).fontWeight(.light).multilineTextAlignment(.center)
                                    Text(formation.location ).fontWeight(.light).multilineTextAlignment(.center)
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

struct FormationsView_Previews: PreviewProvider {
    static var previews: some View {
        FormationsView(formations: Formation.sampleData)
    }
}
