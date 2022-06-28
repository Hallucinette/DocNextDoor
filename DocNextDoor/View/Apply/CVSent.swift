//
//  CVSent.swift
//  DocNextDoor
//
//  Created by Apprenant 11 on 22/06/2022.
//

import SwiftUI

struct CVSent: View {
    @Binding var profilUser : ProfilUser
    var body: some View {
        NavigationLink(destination: SavedAds(profilUser: $profilUser).navigationBarHidden(true).navigationBarBackButtonHidden(true)) {
        ZStack { //background
            Color("BackG").ignoresSafeArea()
            VStack {
                Spacer()
                Image("AdApplied").resizable().aspectRatio(contentMode: .fit).frame(width: 280, height: 350, alignment: .center).padding(10)
                Rectangle().frame(width: 80, height: 3, alignment: .center).foregroundColor(Color("Lightblue")).padding(15)
                Text("CANDIDATURE ENVOYÉE !").font(.title).bold().multilineTextAlignment(.center).foregroundColor(Color("Darkblue")).frame(width: 350).padding(5)
                Text("Bientöt le poste fait pour vous !").font(.title3).italic().multilineTextAlignment(.center).foregroundColor(Color("Txtgrey")).frame(width: 350)
                Rectangle().frame(width: 80, height: 3, alignment: .center).foregroundColor(Color("Lightblue")).padding(20)
                Spacer()
                Spacer()
            }//fin VStack
        }//fin ZStack
            
        }//fin navlink
    }
}
/*
struct CVSent_Previews: PreviewProvider {
    static var previews: some View {
        CVSent(profilUser: profilUser).previewDevice(PreviewDevice(rawValue: "iPhone 13"))
    }
}
*/
