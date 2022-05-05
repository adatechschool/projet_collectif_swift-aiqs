//
//  NetworkManager.swift
//  Wave
//
//  Created by Quentin LEE on 05/05/2022.
//

import Foundation

class NetWorkManager {
    func getSpots(completion: @escaping (Result<Spots, Error>) -> Void){
        guard let url = URL(string:"https://api.airtable.com/v0/appxT9ln6ixuCb3o1/Surf%20Destinations?api_key=key1NZVn1sclY0ClR") else {
            print("invalid url");
            return
        }
        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            if let error = error {
                completion(.failure(error.localizedDescription as! Error))
                return
            }
            do {
               // spots = try! JSONDecoder().decode([Record].self, from: data!)
               //let spots = try! JSONDecoder().decode([Spots].self, from: data!)
                let spots = try! JSONDecoder().decode(Spots.self, from: data!)
                completion(.success(spots))
                print(spots)
            } /*catch let jsonError {
                completion(.failure(jsonError).localizedDescription as! Error)
            }*/
        }
        .resume()
    }
}

 //var spots: [Record] = []
  
