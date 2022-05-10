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
    /*
    func coordinates(forAddress address: String, completion: @escaping (CLLocationCoordinate2D?) -> Void) {
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(address) {
            (placemarks, error) in
            guard error == nil else {
                print("Geocoding error: \(error!)")
                completion(nil)
                return
            }
            completion(placemarks?.first?.location?.coordinate)
        }
    }*/
    private func setRegion(_ geocode: String) {
        
        guard let res = geocode.base64Decoded() else {return}
        let jsonData = res.data(using: .utf8)!
        let decoder = JSONDecoder()
        let geoCode: GeoCode = try! decoder.decode(GeoCode.self, from: jsonData)
        print(geoCode)
        let lat = geoCode.o.lat
        let lng = geoCode.o.lng
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



/*
let JSON = """
{"i":"Pipeline, Oahu, Hawaii","o":{"status":"OK","formattedAddress":"Ehukai Beach Park, Haleiwa, HI 96712, United States","lat":21.6650562,"lng":-158.05120469999997},"e":1535307019915}
"""

let jsonData = JSON.data(using: .utf8)!
let decoder = JSONDecoder()
let geoCode: GeoCode = try! decoder.decode(GeoCode.self, from: jsonData)
print(geoCode.o.lat)
*/
//Mark: - Decode
/*
 geocode = "eyJpIjoiUGlwZWxpbmUsIE9haHUsIEhhd2FpaSIsIm8iOnsic3RhdHVzIjoiT0siLCJmb3JtYXR0ZWRBZGRyZXNzIjoiRWh1a2FpIEJlYWNoIFBhcmssIEhhbGVpd2EsIEhJIDk2NzEyLCBVbml0ZWQgU3RhdGVzIiwibGF0IjoyMS42NjUwNTYyLCJsbmciOi0xNTguMDUxMjA0Njk5OTk5OTd9LCJlIjoxNTM1MzA3MDE5OTE1fQ"
 decoded = {
 "i":"Pipeline, Oahu, Hawaii",
 "o":{
 "status":"OK",
 "formattedAddress":"Ehukai Beach Park, Haleiwa, HI 96712, United States",
 "lat":21.6650562,
 "lng":-158.05120469999997},
 "e":1535307019915
 
 }
 
 */
