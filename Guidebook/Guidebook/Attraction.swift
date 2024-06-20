//
//  Attraction.swift
//  Guidebook
//
//  Created by liuruixuan on 2024/6/17.
//

import Foundation

struct Attraction: Identifiable, Decodable {
    var id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
}
