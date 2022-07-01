//
//  SpecialtyHeaderRowView.swift
//  DocNextDoor
//
//  Created by apprenant55 on 30/06/2022.
//

import SwiftUI

struct SpecialtyHeaderRowView: View {
    
    
    //    enum allSpecialties {
    //        case chir
    //        case organ
    //        case skin
    //        case brain
    //        case daily
    //        case faceSens
    //        case reproductive
    //        case psycho
    //        case radio
    //        case emergency
    //    }

    
    var headerIcon: String
    var headerLabel: String
    
    var body: some View {
        
        HStack {
            Image(headerIcon)
                .resizable()
                .frame(maxWidth: 32, maxHeight: 32)
            Text(headerLabel)
                .bold()
        }
    }
}

struct SpecialtyHeaderRowView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialtyHeaderRowView(headerIcon: "heartC", headerLabel: "Cardiologue")
    }
}
