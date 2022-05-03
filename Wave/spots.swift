//
//  spots.swift
//  Wave
//
//  Created by Quentin LEE on 02/05/2022.
//

import SwiftUI

//add Identifiable and ID in our JSON

struct Spots : Decodable, Identifiable {
    enum Category: String, Decodable {
        case extreme, hard, normal, easy
    }
    let id: Int
    let localisation: String
    let spot: String
    let img: String
    let description: String
    let category: Category
    
}

let JSON = """
[
{
    "id": 1,
    "localisation": "Taiwan",
    "spot": "Restaurant (Shi Men)",
    "img": "https://content.shopback.com/tw/wp-content/uploads/2020/07/08204905/10_best_taiwan_surfing_sites_1.jpg" ,
    "description": "A famous surfing spot in Taiwan.",
    "category": "hard"
},
{
    "id": 2,
    "localisation": "Floride",
    "spot": "Cocoa Beach Pier",
    "img": "https://www.visittheusa.fr/sites/default/files/styles/16_9_770x433/public/images/hero_media_image/2020-09/6f57cd1b-48da-4aba-8f30-7c1e5a3dd5cd.jpeg?itok=Yal6pdzK",
    "description": "Bring your beer and get wasted while surfing.",
    "category": "hard"
}
]

"""

let jsonData = JSON.data(using: .utf8)!
let spots: [Spots] = try! JSONDecoder().decode([Spots].self, from: jsonData)

