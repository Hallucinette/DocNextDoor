//
//  TransportsRow.swift
//  DocNextDoor
//
//  Created by apprenant55 on 27/06/2022.
//

import SwiftUI

struct TransportsRow: View {

    var body: some View {
        
        VStack {
            Text("Transports à proximité")
            HStack {
                AdsPicto(nameIcon: "Aéroport", nameIconColored: "airplane.circle", isColored: false)
                AdsPicto(nameIcon: "Gare", nameIconColored: "snowflake", isColored: false)
                AdsPicto(nameIcon: "Tram / Métro", nameIconColored: "sun.fill", isColored: false)
            }
        }
    }
}
//        VStack {
//            Image(systemName: "airplane.circle")
//            Text("Aéroport")
//        }



struct TransportsRow_Previews: PreviewProvider {
    static var previews: some View {
        TransportsRow()
    }
}
