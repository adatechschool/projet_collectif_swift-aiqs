//
//  SpotList.swift
//  Wave
//
//  Created by Quentin LEE on 04/05/2022.
//

import SwiftUI

// List of spots
struct SpotList: View {
    @State var records = [Record]()
    var body: some View {
        NavigationView {
            List(records) { item in
                NavigationLink {
                    DetailView(record: item)
                } label: {
                    SpotRow(record: item)
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
        switch result {
        case .success(let spots): DispatchQueue.main.async {
            self.records = spots.records
        }
        case .failure(let error):
            print(error.localizedDescription)
        }
        }
    }
}
