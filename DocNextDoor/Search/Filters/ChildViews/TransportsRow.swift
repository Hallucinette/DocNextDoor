//
//  TransportsRow.swift
//  DocNextDoor
//
//  Created by apprenant55 on 27/06/2022.
//

import SwiftUI

struct TransportsRow: View {
    
//@Binding: nameIconColored = false
    
    var body: some View {
        
        VStack {
            Text("Transports à proximité")
            HStack {
                AdsPicto(nameIcon: "Aéroport", nameIconColored: "airplane.circle", isColored: true)
                AdsPicto(nameIcon: "Gare", nameIconColored: "train.side.front.car", isColored: true)
                AdsPicto(nameIcon: "Tram / Métro", nameIconColored: "tram", isColored: true)
            }
//            AdsPicto.isColored == true ? nameIconColored : nameIcon
//            if AdsPicto.isColored == true {
//                nameIconColored
//            } else {
//                nameIcon
//            }
            
        }
    }
}




struct TransportsRow_Previews: PreviewProvider {
    static var previews: some View {
        TransportsRow()
    }
}
