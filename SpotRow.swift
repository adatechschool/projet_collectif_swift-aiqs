//
//  SpotRow.swift
//  Wave
//
//  Created by Quentin LEE on 04/05/2022.
//

import SwiftUI


// Each spot row
struct SpotRow: View {

   
    var spot: Surf
    var body: some View {
        HStack {
           
            Image(systemName: "spot.png").data(url: URL(string: spot.photos)!)
                .resizable()
                .padding()
                .frame(width: 200, height: 130)
            Text(spot.destination)
                .font(.body)

            Spacer()
        }
        
    }
}

