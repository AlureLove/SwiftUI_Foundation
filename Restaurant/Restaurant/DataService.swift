//
//  DataService.swift
//  Menu
//
//  Created by liuruixuan on 2024/6/12.
//

import Foundation

struct DataService {
    func getData() -> [MenuItem] {
        return [MenuItem(name: "Onigiri", prive: "1.99", imageName: "onigiri"),
                MenuItem(name: "Meguro Sushi", prive: "5.99", imageName: "meguro-sushi"),
                MenuItem(name: "Tako Sushi", prive: "4.99", imageName: "tako-sushi"),
                MenuItem(name: "Avocado Maki", prive: "2.99", imageName: "avocado-maki"),
                MenuItem(name: "Tobiko Spicy Maki", prive: "4.99", imageName: "tobiko-spicy-maki"),
                MenuItem(name: "Salmon Sushi", prive: "4.99", imageName: "salmon-sushi"),
                MenuItem(name: "Hamachi Sushi", prive: "6.99", imageName: "hamachi-sushi"),
                MenuItem(name: "Kani Sushi", prive: "3.99", imageName: "kani-sushi"),
                MenuItem(name: "Tamago Sushi", prive: "3.99", imageName: "tamago-sushi"),
                MenuItem(name: "California Roll", prive: "3.99", imageName: "california-roll"),
                MenuItem(name: "Shrimp Sushi", prive: "3.99", imageName: "shrimp-sushi"),
                MenuItem(name: "Ikura Sushi", prive: "5.99", imageName: "ikura-sushi")]
    }
    
    func getPhotos() -> [String] {
        return ["gallery1", "gallery2", "gallery3", "gallery4", "gallery5", "gallery6", "gallery7", "gallery8", "gallery9", "gallery10", "gallery11", ]
    }
}
