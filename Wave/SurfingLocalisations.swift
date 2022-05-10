//
//  spots.swift
//  Wave
//
//  Created by Quentin LEE on 02/05/2022.
//

import Foundation

// MARK: - Spots
struct Spots: Codable {
    let records: [Record]
}

// MARK: - Record
struct Record: Codable, Identifiable {
    let id, createdTime: String
    let fields: Fields
}

// MARK: - Fields
struct Fields: Codable {
    let surfBreak: [String]
    let difficultyLevel: Int
    let destination, geocode: String
    let influencers: [Influencer]?
    let magicSeaweedLink: String
    let photos: [Photos]
    let peakSurfSeasonBegins, destinationStateCountry, peakSurfSeasonEnds, address: String
    let travellers: [String]?

    enum CodingKeys: String, CodingKey {
        case surfBreak = "Surf Break"
        case difficultyLevel = "Difficulty Level"
        case destination = "Destination"
        case geocode = "Geocode"
        case influencers = "Influencers"
        case magicSeaweedLink = "Magic Seaweed Link"
        case photos = "Photos"
        case peakSurfSeasonBegins = "Peak Surf Season Begins"
        case destinationStateCountry = "Destination State/Country"
        case peakSurfSeasonEnds = "Peak Surf Season Ends"
        case address = "Address"
        case travellers = "Travellers"
    }
}

enum Influencer: String, Codable {
    case rec1PtbRPxhS8RRun = "rec1ptbRPxhS8rRun"
    case recD1Zp1PQYc8O7L2 = "recD1zp1pQYc8O7l2"
    case recSkJ4HuvzAUBrdd = "recSkJ4HuvzAUBrdd"
}

// MARK: - Photo
struct Photos: Codable, Identifiable {
    let id: String
    let width, height: Int
    let url: String
    let filename: String
    let size: Int
    let type: String
    let thumbnails: Thumbnails
}

// MARK: - Thumbnails
struct Thumbnails: Codable {
    let small, large, full: Full
}

// MARK: - Full
struct Full: Codable {
    let url: String
    let width, height: Int
}
