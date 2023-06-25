//
//  ContactsView.swift
//  cv_rita
//
//  Created by stage on 13/06/2023.
//

import SwiftUI

struct ContactsView: View {
    let contacts: [Contacts]
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack (alignment: .leading, spacing: 20){
                    ForEach(contacts) { contact in
                        Label("\(contact.text)", systemImage: "\(contact.image)")
                    }
                }.foregroundColor(.black)
                    .background(.white)
                    .ignoresSafeArea(.container, edges: .top)
                    .navigationBarTitle("Contact", displayMode: .inline)
                    .padding(.top, 25)
            }
        }
    }
}
        

    

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contacts: Contacts.sampleData)
    }
}
