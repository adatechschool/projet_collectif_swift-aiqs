//
//  SpotList.swift
//  Wave
//
//  Created by Quentin LEE on 04/05/2022.
//

import SwiftUI

// List of spots
struct SpotList: View {
 
    @State var SurfingSpots = [Surf]()

    var body: some View {
        NavigationView {
            List(SurfingSpots) {
                item in
                NavigationLink{
                    DetailView(spot: item)
                } label: { SpotRow(spot: item)
            }
    
            }
            .onAppear(){
                getSpotData()
            }
            .navigationTitle("Surfing Spots")

    }
        
}
}


extension SpotList {
    func getSpotData(){
        NetWorkManager().getSpots {(result) in
            print(result)
        switch result {
        case .success(let spots): DispatchQueue.main.async {
            self.SurfingSpots = spots
            print(spots)
        }
        case .failure(let error):
            print(error.localizedDescription)
        }
        }
    }
}

