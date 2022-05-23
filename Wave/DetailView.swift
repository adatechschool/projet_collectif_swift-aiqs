//
//  details.swift
//  Wave
//
//  Created by Sonia M on 02/05/2022.
//


import SwiftUI
import MapKit



struct DetailView: View {
    var spot : Surf

    var body: some View {
          MapView(coordinate: CLLocationCoordinate2D(latitude: spot.lat, longitude: spot.lng))
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
        VStack{
            HStack{
                Text(spot.destination)
                    .font(.headline)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
     
                Text(spot.difficultyLevel.toEmoji())
            }
        }
        Text(spot.address)
            .font(.headline)
            .foregroundColor(.blue)
        Text(spot.surfBreak)
            .font(.headline)
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
        
        HStack {
            Text("Peak surf season begins: ")
            Text(spot.peakSurfSeasonBegins)
            
        }
        HStack{
            Text("Peak surf season ends: ")
            Text(spot.peakSurfSeasonEnds)
            
        }
        
        Image(systemName: "spot.png").data(url: URL(string: spot.photos)!)
            .resizable()
            .padding()
            .scaledToFit()
            .frame(width: 450, height: 250)
        
        Link(destination: URL(string: spot.magicSeaweedLink)!) {
            Text("More info")
                .font(.headline)
            Image(systemName: "moon.fill")
        }
        
        Spacer()
            .navigationTitle("Details")
            .navigationBarTitleDisplayMode(.inline)
    }
}


extension Int {
    func times(_ f: () -> ()) {
        if self > 0 {
            for _ in 0..<self {
                f()
            }
        }
    }
    
    func toEmoji()->String{
        var emoji = ""
        for _ in 0..<self{
            emoji.append("🌊")
        }
        return emoji
    }
    
}


