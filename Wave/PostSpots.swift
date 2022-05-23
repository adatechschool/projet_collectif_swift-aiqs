//
//  PostSpots.swift
//  Wave
//
//  Created by Quentin LEE on 19/05/2022.
//

import Foundation
import SwiftUI

struct SpotForm: View {
   
     struct SpotFields : Encodable {
           var fields: [FormSpotData]
       }
    
   class FormSpotData: Encodable, ObservableObject {
 //       var id = ""
        var surfBreak = ""
        var difficultyLevel: Int = 0
        var destination = ""
        var magicSeaweedLink = ""
        var photos = ""
        var peakSurfSeasonBegins = ""
        var destinationStateCountry = ""
        var peakSurfSeasonEnds = ""
        var address = ""
        var lat: Double = 0
        var lng: Double = 0
      }
    
    
    
    @ObservedObject var formData = FormSpotData()
    @State private var confirmationMessage = ""
    @State private var showingConfirmation = false
    
    var coordFormater: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.decimalSeparator = "."
        formatter.groupingSeparator = ""
        return formatter
    }()
    
    var body: some View {
        VStack{
            Text("Post your favorite surfing spot!").font(.title)
            Text("All fields are mandatory").font(.title3)
            Form {
                Section {
                    TextField("surfBreak", text: $formData.surfBreak)
                    TextField("difficultyLevel", value: $formData.difficultyLevel, formatter: coordFormater)
                    TextField("destination", text: $formData.destination)
                    TextField("magicSeaweedLink", text: $formData.magicSeaweedLink)
                    TextField("photos", text: $formData.photos)
                }
                Section {
                    TextField("peakSurfSeasonBegins", text: $formData.peakSurfSeasonBegins)
                    TextField("destinationStateCountry", text: $formData.destinationStateCountry)
                    TextField("peakSurfSeasonEnds", text:$formData.peakSurfSeasonEnds)
                    TextField("address", text:$formData.address)
                    TextField("lat", value: $formData.lat, formatter: coordFormater)
                    TextField("lng", value: $formData.lng, formatter: coordFormater)
                }
                
                Section {
                    Button("Send!") {
                        Task {
                             postMethod()
                        }
                    }
                }
            }
        }.alert("Thank you!", isPresented: $showingConfirmation) {Button("OK"){}} message: {
            Text(confirmationMessage)}
    }

    
    func postMethod() {
            guard let url = URL(string: "http://localhost:8080/api/createSpot") else {
                print("Error: cannot create URL")
                return
            }
        let body = formData
       // print(body)
        //  let finalBody = try? JSONSerialization.data(withJSONObject: body)
        print("before finalBody")
        guard let finalBody = try? JSONEncoder().encode(body) else {
            print("coucou ça marche pas")
            return
        }
        print(finalBody)
              //  let finalBody = try? JSONSerialization.data(withJSONObject: body)
       print("doing post request")
                var request = URLRequest(url: url)
                request.httpMethod = "POST"
                request.httpBody = finalBody
                request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        print("setting value")
                URLSession.shared.dataTask(with: request){
                    (data, response, error) in
                    guard error == nil else {
                        print("Error: error calling POST")
                        print(error!)
                        return
                    }
                    guard let data = data else {
                        print("Error: Did not receive data")
                        print(data!)
                        return
                    }
                    guard let response = response as? HTTPURLResponse, (200 ..< 299) ~= response.statusCode else {
                        print("Error: HTTP request failed")
                        print(response)
                        return
                    }
                    do {
                        print("jsonObject")
                        guard let jsonObject = try JSONSerialization.jsonObject(with: data) as? [String: Any] else {
                            print("Error: Cannot convert data to JSON object")
                            return
                        }
                        print("prettyJson")
                        guard let prettyJsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted) else {
                            print("Error: Cannot convert JSON object to Pretty JSON data")
                            return
                        }
                        print("prettyPrintedJson")
                        guard let prettyPrintedJson = String(data: prettyJsonData, encoding: .utf8) else {
                            print("Error: Couldn't print JSON in String")
                            return
                        }
                        print("hello new value")
                       // print(prettyPrintedJson)
                    } catch {
                        print("Error: Trying to convert JSON data to string")
                        return
                    }
                    
                }.resume()
                
            }
        }
        
