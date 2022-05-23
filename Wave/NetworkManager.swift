//
//  NetworkManager.swift
//  Wave
//
//  Created by Quentin LEE on 05/05/2022.
//

import Foundation

// Get request 
class NetWorkManager {
    func getSpots(completion: @escaping (Result<[Surf], Error>) -> Void){
       
        guard let url = URL(string:"http://localhost:8080/api/spots") else {
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
               
                let spots = try! JSONDecoder().decode([Surf].self, from: data!)
             
                completion(.success(spots))
               
               
            }
        }
        .resume()
    }
}


