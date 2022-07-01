//
//  Button_Annonce.swift
//  DocNextDoor
//
//  Created by apprenant59 on 28/06/2022.
//

import SwiftUI

struct Apply_Ads: View {
    @State var txt: String
    @State var colorCustom: String
    var body: some View {
        /*Text(txt)
            .font(.headline)
                .padding(15)
                .background(Color(colorCustom))
                .cornerRadius(45)
                .foregroundColor(.white)
                .padding(30)*/
        Text(txt).bold()
            .addBlueButton()
    }
}

struct Apply_Ads_Previews: PreviewProvider {
    static var previews: some View {
        Apply_Ads(txt: "Postuler", colorCustom: "Darkblue")
    }
}
