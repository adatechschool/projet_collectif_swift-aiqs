//
//  details.swift
//  Wave
//
//  Created by Sonia M on 02/05/2022.
//


import SwiftUI

struct DetailView: View {

    var body: some View {
        VStack{
        Image("la-torche")
                .resizable()
                .padding()
                .scaledToFit()
        Text("Le spot le plus connu pour le surf en Bretagne.")
            .font(.headline)
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
            .padding()
        Spacer()
    }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView()
    }
}
}




