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

let spots = Spot(localisation : "Tahiti", spot : "Suurf", img : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7OgQKZrohc27vcmEANxklB2ng2qnttiziBg&usqp=CAU")

struct ContentView: View {
    @State var BPWeight: String = ""
    @State var GoalBPWeight: String = ""
    var body: some View {
    List{
        VStack{
        
        Text("Localisation : Le Ploemeur")
            .font(.headline)
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
        Text("Spot : La Torche")
            .font(.headline)
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
        Image("la-torche")
            .resizable()
            .padding()
            .scaledToFit()
        }
        VStack{
        
            Text(spots.localisation)
            .font(.headline)
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
            Text(spots.spot)
            .font(.headline)
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
            Image(systemName: "spot.png").data(url: URL(string: spots.img)!)
        }
    }
}
}

    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    

