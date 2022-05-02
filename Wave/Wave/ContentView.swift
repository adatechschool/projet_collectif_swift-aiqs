//
//  ContentView.swift
//  Wave
//
//  Created by Quentin LEE on 02/05/2022.
//

import SwiftUI

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
            .scaledToFit()
        }
        }
    }
   
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
