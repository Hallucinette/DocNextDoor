//
//  TransportsRow.swift
//  DocNextDoor
//
//  Created by apprenant55 on 27/06/2022.
//

import SwiftUI

struct TransportsRow: View {
    
    //    @Binding var
    
    var body: some View {
        
        HStack {
            AdsPicto(nameIcon: "Airplane", nameIconColored: "airplane.circle", isColored: false)
            AdsPicto(nameIcon: "Train", nameIconColored: "snowflake", isColored: false)
        }
        //        VStack {
        //            Image(systemName: "airplane.circle")
        //            Text("Aéroport")
        //        }
    }
}

struct TransportsRow_Previews: PreviewProvider {
    static var previews: some View {
        TransportsRow()
    }
}
