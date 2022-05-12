//
//  details.swift
//  Wave
//
//  Created by Sonia M on 02/05/2022.
//


import SwiftUI
import MapKit



struct DetailView: View {
    //var spot : Spots
    var photos = [Photos]()
    var record: Record
    var body: some View {
        MapView(geocode:
                    record.fields.geocode)
            .ignoresSafeArea(edges: .top)
            .frame(height: 250)
        VStack{
            HStack{
                Text(record.fields.destination)
                    .font(.headline)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                //                Text(record.fields.difficultyLevel.times {
                //                    var s = "";
                //                    s.append(Character("🌊")
                //
                Text(record.fields.difficultyLevel.toEmoji())
            }
        }
        Text(record.fields.address)
            .font(.headline)
            .foregroundColor(.blue)
        Text(record.fields.surfBreak[0])
            .font(.headline)
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
        
        HStack {
            Text("Peak surf season begins: ")
            Text(record.fields.peakSurfSeasonBegins)
            
        }
        HStack{
            Text("Peak surf season ends: ")
            Text(record.fields.peakSurfSeasonEnds)
            
        }
        
        Image(systemName: "spot.png").data(url: URL(string: record.fields.photos[0].url)!)
            .resizable()
            .padding()
            .scaledToFit()
            .frame(width: 450, height: 250)
        
        Link(destination: URL(string: record.fields.magicSeaweedLink)!) {
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
        for i in 0..<self{
            emoji.append("🌊")
        }
        return emoji
    }
    
}


