//
//  MenuListRow.swift
//  Menu
//
//  Created by liuruixuan on 2024/6/13.
//

import SwiftUI

struct MenuListRow: View {
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            
            Text(item.name)
                .bold()
            
            Spacer()
            
            Text("$" + item.prive)
        }
        .listRowSeparator(.hidden)
        .listRowBackground(Color(.brown)
            .opacity(0.1))
    }
}

#Preview {
    MenuListRow(item: MenuItem(name: "Test Name", prive: "3.99", imageName: "onigiri"))
}
