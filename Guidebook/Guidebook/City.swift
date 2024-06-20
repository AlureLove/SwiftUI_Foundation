//
//  City.swift
//  Guidebook
//
//  Created by liuruixuan on 2024/6/17.
//

import Foundation

struct City: Identifiable, Decodable {
    var id = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
}
