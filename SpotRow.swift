//
//  SpotRow.swift
//  Wave
//
//  Created by Quentin LEE on 04/05/2022.
//

import SwiftUI

struct SpotRow: View {
    var spot: Spots

    var body: some View {
        HStack {
            Image(systemName: "spot.png").data(url: URL(string: spot.img)!)
                .resizable()
                .padding()
                .frame(width: 50, height: 50)
            Text(spot.spot)

            Spacer()
        }
    }
}

struct SpotRow_Previews: PreviewProvider {
    static var previews: some View {
        SpotRow(spot: spots[0])
    }
}
