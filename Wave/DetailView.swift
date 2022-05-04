//
//  details.swift
//  Wave
//
//  Created by Sonia M on 02/05/2022.
//


import SwiftUI
import MapKit



struct DetailView: View {
    var spot : Spots
    var body: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: spot.latitude, longitude: spot.longitude))
                       .ignoresSafeArea(edges: .top)
                       .frame(height: 300)
        VStack{
            Text(spot.spot)
            .font(.headline)
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
            Text(spot.description)
                .font(.headline)
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
            Text(spot.localisation)
                .font(.headline)
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
            Image(systemName: "spot.png").data(url: URL(string:spot.img)!)
                .resizable()
                .padding()
                .scaledToFit()
                
       
    }
            Spacer()
            .navigationTitle("Details")
            .navigationBarTitleDisplayMode(.inline)
        }
     
    }


/*
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(spot: item)
    }
}
}
 */



