//
//  AdPublished.swift
//  DocNextDoor
//
//  Created by Apprenant 11 on 22/06/2022.
//

import SwiftUI

struct AdPublished: View {
    var body: some View {
        ZStack { //background
            Color("BackG").ignoresSafeArea()
            VStack {
                Spacer()
                Image("AdPublished").resizable().aspectRatio(contentMode: .fit).frame(width: 280, height: 350, alignment: .center).padding(10)
                Rectangle().frame(width: 80, height: 3, alignment: .center).foregroundColor(Color("Lightblue")).padding(15)
                Text("ANNONCE PUBLIÉE !").font(.title).bold().multilineTextAlignment(.center).foregroundColor(Color("Darkblue")).frame(width: 350).padding(5)
                Text("Bientöt le candidat fait pour vous !").font(.title3).italic().multilineTextAlignment(.center).foregroundColor(Color("Txtgrey")).frame(width: 350)
                Rectangle().frame(width: 80, height: 3, alignment: .center).foregroundColor(Color("Lightblue")).padding(20)
                Spacer()
            }
        }
    }
}

struct AdPublished_Previews: PreviewProvider {
    static var previews: some View {
        AdPublished().previewDevice(PreviewDevice(rawValue: "iPhone 13"))
    }
}
