//
//  ContentView.swift
//  Guidebook
//
//  Created by liuruixuan on 2024/6/17.
//

import SwiftUI

struct CityView: View {
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            ScrollView(showsIndicators: false, content: {
                VStack {
                    ForEach(cities) { city in
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 20)
                        }
                    }
                }
            })
            .padding(.horizontal)
        }
        .ignoresSafeArea()
        .onAppear(perform: {
            cities = dataService.getData()
        })
    }
}

#Preview {
    CityView()
}
