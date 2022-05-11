//
//  MapView.swift
//  Wave
//
//  Created by Quentin LEE on 04/05/2022.
//

import SwiftUI
import MapKit
import CoreLocation


struct MapView: View {
  //  var record: Record
    var geocode: String
    //var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(geocode)
            }
    }
   
    private func setRegion(_ geocode: String) {
        // Working fine except for those with red circle
        print(geocode)
        let new = geocode.dropFirst()
        let strNew = String(new)
        let trimmedNew = strNew.trimmingCharacters(in: .whitespaces)
       // print(strNew)
       // print(trimmedNew)
        guard let res = trimmedNew.base64Decoded() else {return}
      //  print(res)
        let jsonData = res.data(using: .utf8)!
        let decoder = JSONDecoder()
        let geoCode: GeoCode = try! decoder.decode(GeoCode.self, from: jsonData)
        print(geoCode)
        let lat = geoCode.o.lat
        let lng = geoCode.o.lng
        print(lat)
        print(lng)
        region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: lat, longitude: lng),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }

}



struct GeoCode: Codable {
    let i: String
    let o: DataObj
    let e: Double
    
}

struct DataObj: Codable {
    let status, formattedAddress: String
    let lat, lng: Double
}




extension String {
        
    func base64Encoded() -> String? {
        return data(using: .utf8)?.base64EncodedString()
    }

    func base64Decoded() -> String? {
        guard let data = Data(base64Encoded: self) else { return nil }
        return String(data: data, encoding: .utf8)
    }
    
  
}
