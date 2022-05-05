//
//  SpotList.swift
//  Wave
//
//  Created by Quentin LEE on 04/05/2022.
//

import SwiftUI

struct SpotList: View {
    @State var spots = [Spots]()
    var body: some View {
        NavigationView {
            List(spots) { item in
                /*NavigationLink {
                    DetailView(spot: item)
                } label: {
                    SpotRow(spot: item)
                }
                */
                Text(item.Destination)
            }
            .onAppear(){
                getSpotData()
            }
            .navigationTitle("Surfing Spots")

    }
        
}
    
 
struct SpotList_Previews: PreviewProvider {
    static var previews: some View {
        SpotList()
    }
}
}


extension SpotList {
    func getSpotData(){
        NetWorkManager().getSpots {(result) in
        switch result {
        case .success(let spots): DispatchQueue.main.async {
            self.spots = spots
        }
        case .failure(let error):
            print(error.localizedDescription)
        }
        }
    }
}
