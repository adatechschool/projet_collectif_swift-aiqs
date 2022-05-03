//
//  details.swift
//  Wave
//
//  Created by Sonia M on 02/05/2022.
//


import SwiftUI



struct DetailView: View {
    let len = spots.count
    var id : Int
    init(id: Int){
        self.id = id-1
    }
    //var i = id-1
    var body: some View {
       
        VStack{
            Text(spots[id].spot)
            .font(.headline)
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
            Text(spots[id].description)
                .font(.headline)
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
            Text(spots[id].localisation)
                .font(.headline)
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
            Image(systemName: "spot.png").data(url: URL(string:spots[id].img)!)
                .resizable()
                .padding()
                .scaledToFit()
                
       
    }
            Spacer()
            .navigationTitle("Details")
            .navigationBarTitleDisplayMode(.inline)
        }
     
    }



struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(id:1)
    }
}
}



