//
//  details.swift
//  Wave
//
//  Created by Sonia M on 02/05/2022.
//


import SwiftUI



struct DetailView: View {
    var spot : Spots
    var body: some View {
       
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



