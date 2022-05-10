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
        MapView(geocode: //"eyJpIjoiTWFudSBCYXksIFJhZ2xhbiwgTmV3IFplYWxhbmQiLCJvIjp7InN0YXR1cyI6Ik9LIiwiZm9ybWF0dGVkQWRkcmVzcyI6Ik1hbnUgQmF5IFJkLCBSYWdsYW4gMzI5NywgTmV3IFplYWxhbmQiLCJsYXQiOi0zNy44MjE0NTkyLCJsbmciOjE3NC44MTIyMTYxOTk5OTk5N30sImUiOjE1MzUzMDcwMjYwNTJ9")
                //"eyJpIjoiU3VwZXJ0dWJlcywgSmVmZnJleXMgQmF5LCBTb3V0aCBBZnJpY2EiLCJvIjp7InN0YXR1cyI6Ik9LIiwiZm9ybWF0dGVkQWRkcmVzcyI6IjEyIFBlcHBlciBTdCwgRmVycmVpcmEgVG93biwgSmVmZnJleXMgQmF5LCA2MzMwLCBTb3V0aCBBZnJpY2EiLCJsYXQiOi0zNC4wMzE3ODMsImxuZyI6MjQuOTMxNTk0MDAwMDAwMDJ9LCJlIjoxNTM1MzA3MDI3OTc1fQ==")
              // "eyJpIjoiVGhlIEJ1YmJsZSwgRnVlcnRldmVudHVyYSwgQ2FuYXJ5IElzbGFuZHMiLCJvIjp7InN0YXR1cyI6Ik9LIiwiZm9ybWF0dGVkQWRkcmVzcyI6IjM1NjUwIExhIE9saXZhLCBMYXMgUGFsbWFzLCBTcGFpbiIsImxhdCI6MjguNzQ0OTA5MSwibG5nIjotMTMuOTQyMjc3OTk5OTk5OTg4fSwiZSI6MTUzNTMwNzAyMzk0N30")
                record.fields.geocode)
                       .ignoresSafeArea(edges: .top)
                       .frame(height: 300) 
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

