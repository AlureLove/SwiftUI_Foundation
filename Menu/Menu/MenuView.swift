//
//  ContentView.swift
//  Menu
//
//  Created by liuruixuan on 2024/6/10.
//

import SwiftUI

struct MenuView: View {
    @State var menuItems: [MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    
    var body: some View {
        List(menuItems) { item in
            MenuListRow(item: item)
        }
        .listStyle(.plain)
        .onAppear(perform: {
            menuItems = dataService.getData()
        })
    }
}

#Preview {
    MenuView()
}
