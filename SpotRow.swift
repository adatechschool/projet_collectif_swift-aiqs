//
//  SpotRow.swift
//  Wave
//
//  Created by Quentin LEE on 04/05/2022.
//

import SwiftUI


// Each spot row
struct SpotRow: View {

    var photos = [Photos]()
    var record: Record
    var body: some View {
        HStack {
           
            Image(systemName: "spot.png").data(url: URL(string: record.fields.photos[0].url)!)
                .resizable()
                .padding()
                .frame(width: 200, height: 130)
            Text(record.fields.destination)
                .font(.body)

            Spacer()
        }
        
    }
}

