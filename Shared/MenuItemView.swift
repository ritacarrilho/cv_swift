//
//  MenuView.swift
//  cv_rita
//
//  Created by stage on 14/06/2023.
//

import SwiftUI

struct MenuItemView: View {
    
    let menu: Menu
    
    var body: some View {
        HStack {
            Image(menu.image)
                .resizable()
                .frame(width: 25, height: 25)
                .padding(.trailing, 30)
            Text(menu.text)
            }
        .font(.headline)
        .padding(30)
        .foregroundColor(.gray)
        }
    }


struct MenuItemView_Previews: PreviewProvider {
    static var menuItem = Menu.sampleData[0]
    
    static var previews: some View {
        MenuItemView(menu: menuItem)
//            .background(Color.yellow)
            .previewLayout(.fixed(width: 400, height: 70))
    }
}
