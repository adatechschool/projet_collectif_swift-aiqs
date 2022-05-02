//
//  details.swift
//  Wave
//
//  Created by Sonia M on 02/05/2022.
//

import Foundation
import SwiftUI



struct DetailView: View {
    @State var BPWeight: String = ""
    @State var GoalBPWeight: String = ""
    var body: some View {
    List{
        VStack{
        
        Text("Coucou")
            .font(.headline)
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
     

            
        }
       
      
       
}
    }


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
}


