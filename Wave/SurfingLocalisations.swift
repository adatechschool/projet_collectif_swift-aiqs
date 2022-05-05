//
//  spots.swift
//  Wave
//
//  Created by Quentin LEE on 02/05/2022.
//

import SwiftUI
import CoreLocation

//add Identifiable and ID in our JSON
/*
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
    let latitude: Double
    let longitude: Double
    }
*/

struct Spots : Decodable, Identifiable {
    class Photos: Decodable, Identifiable {
        let id: String
        let width: Int
        let height: Int
        let url: String
    }
    let id: String
    let createdTime: String
    let fields: [String]
    let DifficultyLevel: Int
    let Destination: String
    let localisation: String
    let Geocode: String
    let MagicSeaweedLink: String
    let Photos: Photos
    let PeakSurSeasonBegins: String
    let Country: String
    let PeakSurfSeasonEnds: String
    let Address: String
    
}

//let spots: [Spots] = try! JSONDecoder().decode([Spots].self, from: jsonData)

/*
let JSON = """
[
{
    "id": 1,
    "localisation": "Taiwan",
    "spot": "Restaurant (Shi Men)",
    "img": "https://content.shopback.com/tw/wp-content/uploads/2020/07/08204905/10_best_taiwan_surfing_sites_1.jpg" ,
    "description": "A famous surfing spot in Taiwan.",
    "category": "hard",
    "latitude" : 25.291000,
    "longitude": 121.565970
},
{
    "id": 2,
    "localisation": "Floride",
    "spot": "Cocoa Beach Pier",
    "img": "https://www.visittheusa.fr/sites/default/files/styles/16_9_770x433/public/images/hero_media_image/2020-09/6f57cd1b-48da-4aba-8f30-7c1e5a3dd5cd.jpeg?itok=Yal6pdzK",
    "description": "Bring your beer and get wasted while surfing.",
    "category": "hard",
    "latitude" : 33.654660,
    "longitude": -118.004580


},
{
    "id": 3,
    "localisation": "Taiwan",
    "spot": "Kenting",
    "img": "https://content.shopback.com/tw/wp-content/uploads/2020/07/08204929/10_best_taiwan_surfing_sites_6.jpg",
    "description": "Chill with your friends in front of the sunset.",
    "category": "easy",
    "latitude" : 21.942921,
    "longitude": 120.802406
},
{
    "id": 4,
    "localisation": "Landes",
    "spot": "Hossegor",
    "img": "https://oceanadventure.surf/wp-content/uploads/2020/10/oa-surfschool-la-centrale-hossegor-9.jpg",
    "description": "landes lande landes",
    "category": "normal",
    "latitude" : 43.663340,
    "longitude": -1.395200
},
{
    "id": 5,
    "localisation": "Croatie",
    "spot": "Camp Kazela (Medulin)",
    "img": "https://media-cdn.tripadvisor.com/media/photo-s/07/66/ed/ff/camp-kazela.jpg",
    "description": "it's beautiful",
    "category": "normal",
    "latitude" : 45.988080,
    "longitude": 16.851220
},
]

"""
*/
/*
let jsonData = JSON.data(using: .utf8)!
let spots: [Spots] = try! JSONDecoder().decode([Spots].self, from: jsonData)
*/

