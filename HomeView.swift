//
//  HomeView.swift
//  Wave
//
//  Created by Quentin LEE on 03/05/2022.
//

import SwiftUI
import Combine

struct HomeView: View {
    @State private var index = 0
    var body: some View {
        ZStack(alignment: .top) {
            Color.clear
      
           VStack{
                //Logo
                HStack {
                    Image("wave")
                    .resizable()
                    .frame(width: 80.0, height: 80.0)
                    .padding()
                    Spacer()
                Image("surfer-img")
                    .resizable()
                    .frame(width: 50.0, height: 50.0)
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .padding()
                }
          //   Description
            VStack{
               
                Text("Take on the hardest surfing spots around the world with this app and become THE pro!")
                  .font(.headline)
                   .multilineTextAlignment(.center)
                   .padding()
           }
         // Carousel
                VStack{

                TabView(selection: $index) {
                    ForEach((0..<4), id: \.self) { index in
                            CardView()
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .padding()
                            
                HStack(spacing: 2) {
                        ForEach((0..<4), id: \.self) { index in
                            Rectangle()
                            .fill(index == self.index ? Color.blue : Color.blue.opacity(0.5))
                            .frame(width: 30, height: 5)

                            }
                }
                           .padding()
            }

           }
    }
    
}
        



struct CardView: View{

    var imgs = ["superbank", "pipeline", "bermuda", "namibia"]
    var locs = ["Super Bank", "Pipeline", "Horseshoe Bay Beach", "Skeleton Bay"]
    @State private var index = 0
    var body: some View{
        ForEach((0..<4), id: \.self) { index
            in
            VStack{
                Text(locs[index])
                        .font(.headline)
                Image(imgs[index])
                .resizable()
                .padding()
                .frame(width: 500, height: 300)
            }
        }
        }
    }
}


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
