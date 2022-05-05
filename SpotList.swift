//
//  SpotList.swift
//  Wave
//
//  Created by Quentin LEE on 04/05/2022.
//

import SwiftUI

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
                //Text(item.fields.destination)
            }
            .onAppear(){
                getSpotData()
            }
            .navigationTitle("Surfing Spots")

    }
        
}
    
 
/*struct SpotList_Previews: PreviewProvider {
    static var previews: some View {
        SpotList()
    }
}*/
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
