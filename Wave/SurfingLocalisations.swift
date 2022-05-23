//
//  spots.swift
//  Wave
//
//  Created by Quentin LEE on 02/05/2022.
//

import Foundation



struct Surf: Codable, Identifiable {
    let id: Int
    let surfBreak: String
    let difficultyLevel: Int
    let destination: String
    let magicSeaweedLink: String
    let photos: String
    let peakSurfSeasonBegins, destinationStateCountry, peakSurfSeasonEnds, address: String
    let lat, lng: Double

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case surfBreak = "SurfBreak"
        case difficultyLevel = "DifficultyLevel"
        case destination = "Destination"
        case magicSeaweedLink = "MagicSeaweedLink"
        case photos = "Photos"
        case peakSurfSeasonBegins = "PeakSurfSeasonBegins"
        case destinationStateCountry = "DestinationStateCountry"
        case peakSurfSeasonEnds = "PeakSurfSeasonEnds"
        case address = "Address"
        case lat = "Lat"
        case lng = "Lng"
    }
}

typealias Surves = [Surf]
