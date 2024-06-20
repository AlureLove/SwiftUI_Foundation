//
//  GalleryView.swift
//  Restaurant
//
//  Created by liuruixuan on 2024/6/14.
//

import SwiftUI

struct GalleryView: View {
    @State var photoData = [String]()
    @State var sheetVisible = false
    @State var selectedPhoto = ""

    let dataService = DataService()

    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Gallery")
                .font(.largeTitle)
                .bold()

            GeometryReader(content: { geometry in
                ScrollView(showsIndicators: false, content: {
                    LazyVGrid(columns: [GridItem(spacing: 10), GridItem(spacing: 10), GridItem(spacing: 10)], spacing: 10, content: {
                        ForEach(photoData, id: \.self) { photo in
                            Image(photo)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (geometry.size.width - 20) / 3)
                                .clipped()
                                .onTapGesture {
                                    selectedPhoto = photo
                                    sheetVisible = true
                                }
                        }
                    })
                })
            })
        })
        .padding(.horizontal)
        .onAppear(perform: {
            photoData = dataService.getPhotos()
        })
        .sheet(isPresented: $sheetVisible, content: {
            PhotoView(selectedPhoto: $selectedPhoto,
                      sheetVisible: $sheetVisible)
        })
    }
}

#Preview {
    GalleryView()
}
