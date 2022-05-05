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
       /* MapView(coordinate: CLLocationCoordinate2D(latitude: spot.latitude, longitude: spot.longitude))
                       .ignoresSafeArea(edges: .top)
                       .frame(height: 300)*/
        VStack{
            Text(record.fields.surfBreak[0])
            .font(.headline)
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
            Text(record.fields.destination)
                .font(.headline)
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
            Text(record.fields.magicSeaweedLink)
                .font(.headline)
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
            Image(systemName: "spot.png").data(url: URL(string: record.fields.photos[0].url)!)
                .resizable()
                .padding()
                .scaledToFit()
                
       
    }
            Spacer()
            .navigationTitle("Details")
            .navigationBarTitleDisplayMode(.inline)
        }
     
    }



/*struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(spot: item)
    }
}
}*/

