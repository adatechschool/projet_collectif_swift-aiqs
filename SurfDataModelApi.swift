//
//  SurfDataModelApi.swift
//  Wave
//
//  Created by Quentin LEE on 04/05/2022.
//

/*
import Foundation
import SwiftAirtable

struct AirtableService {
    
    private static let apiKey = "key1NZVn1sclY0ClR"
    private static let apiBaseUrl = "appxT9ln6ixuCb3o1"
    
    static func fetchContent(completion: @escaping (Result<[Content], Error>) -> Void) {
        let airtable = Airtable(apiKey: apiKey, apiBaseUrl: apiBaseUrl, schema: Content.schema)
        airtable.fetchAll(table: Content.airtableViewName) { (content: [Content] , error) in
            if let error = error {
                completion(.failure(error))
            } else {
                let sortedContent = content.sorted { $0.position < $1.position }
                completion(.success(sortedContent))
            }
        }
    }
    
    static func fetchTags(completion: @escaping (Result<[Tag], Error>) -> Void) {
        let airtable = Airtable(apiKey: apiKey, apiBaseUrl: apiBaseUrl, schema: Tag.schema)
        airtable.fetchAll(table: Tag.airtableViewName) { (content: [Tag] , error) in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(content))
            }
        }
    }
    
}
*/
