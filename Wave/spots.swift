//
//  spots.swift
//  Wave
//
//  Created by Quentin LEE on 02/05/2022.
//

import Foundation

class Spot : Codable {
    var localisation : String
    var spot : String
    var img : String
    
    init(localisation : String, spot : String, img : String){
        self.localisation = localisation
        self.spot = spot
        self.img = img

    }
    
}
