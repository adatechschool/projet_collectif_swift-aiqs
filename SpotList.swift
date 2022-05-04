//
//  SpotList.swift
//  Wave
//
//  Created by Quentin LEE on 04/05/2022.
//

import SwiftUI

struct SpotList: View {
    var body: some View {
        NavigationView {
            List(spots) { item in
                NavigationLink {
                    DetailView(spot: item)
                } label: {
                    SpotRow(spot: item)
                }
                
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


