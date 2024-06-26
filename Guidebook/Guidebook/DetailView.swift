//
//  DetailView.swift
//  Guidebook
//
//  Created by liuruixuan on 2024/6/17.
//

import SwiftUI

struct DetailView: View {
    var attraction: Attraction

    var body: some View {
        VStack(spacing: 20, content: {
            Image(attraction.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)

            ScrollView(showsIndicators: false, content: {
                VStack(alignment: .leading, spacing: 20, content: {
                    Text(attraction.name)
                        .font(.title)
                        .bold()
                    Text(attraction.longDescription)
                        .multilineTextAlignment(.leading)
                    if let url = URL(string: "maps://?q=\(cleanName(name: attraction.name))&sll=\(cleanCoords(latlong: attraction.latLong))&z=10&t=s") {
                        if UIApplication.shared.canOpenURL(url) {
                            Button(action: {
                                UIApplication.shared.open(url)
                            }, label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundStyle(.blue)
                                        .frame(height: 40)
                                    Text("Get Directions")
                                        .foregroundStyle(.white)
                                }
                            })
                        }
                    }

                })
                .padding(.bottom, 20)
            })
            .padding(.horizontal)
        })
        .ignoresSafeArea()
    }

    func cleanName(name: String) -> String {
        return name.replacingOccurrences(of: " ", with: "+").folding(options: .diacriticInsensitive, locale: .current)
    }

    func cleanCoords(latlong: String) -> String {
        return latlong.replacingOccurrences(of: " ", with: "")
    }
}

#Preview {
    DetailView(attraction: Attraction(name: "Pantheon",
                                      summary: "The Pantheon is a former Roman temple and, since 609 AD, a Catholic church in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
                                      longDescription: """
                                      The Pantheon from Greek is a former Roman temple and, since 609 AD, a Catholic church (Basilica di Santa Maria ad Martyres or Basilica of St. Mary and the Martyrs) in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus (27 BC – 14 AD). It was rebuilt by the emperor Hadrian and probably dedicated c. 126 AD. Its date of construction is uncertain, because Hadrian chose not to inscribe the new temple but rather to retain the inscription of Agrippa's older temple, which had burned down.
                                      """,
                                      imageName: "pantheon", latLong: "41.898762500696236, 12.476915812472798"))
}
