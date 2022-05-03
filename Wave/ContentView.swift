//
//  ContentView.swift
//  Wave
//
//  Created by Quentin LEE on 02/05/2022.
//

import SwiftUI

//working fine

extension Image {
    func data(url: URL)->Self{
        if let data = try?Data(contentsOf: url){
            return Image(uiImage: UIImage(data:data)!)
                .resizable()
        }
        return self
            .resizable()
    }
}

extension Color {
  init(_ hex: UInt, alpha: Double = 1) {
    self.init(
      .sRGB,
      red: Double((hex >> 16) & 0xFF) / 255,
      green: Double((hex >> 8) & 0xFF) / 255,
      blue: Double(hex & 0xFF) / 255,
      opacity: alpha
    )
  }
}


let blue = Color("4281a4");
let green = Color("0d1b2a");


struct ContentView: View {
    var body: some View {
               ContentCard()
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
struct ContentCard : View {
    @State private var showDetails = false
    var body:some View {
        NavigationView{
        VStack{
            ForEach(spots){
                spot in
            Text(spot.localisation)
                .font(.headline)
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
            Text(spot.spot)
                .font(.headline)
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
            Image(systemName: "spot.png").data(url: URL(string: spot.img)!)
                .resizable()
                .padding()
                .scaledToFit()
            NavigationLink(destination: DetailView(), isActive: $showDetails) { EmptyView() }
            Button("Show details") {
                self.showDetails=true
                }
            .navigationTitle("Wave")
            .clipShape(RoundedRectangle(cornerRadius: 25, style:
            .continuous))
            .frame(width: 120, height: 25)
            .background(.blue)
            .foregroundColor(.white)
        }
        }
    }
}
    }


