//
//  Loading.swift
//  DocNextDoor
//
//  Created by Apprenant 11 on 22/06/2022.
//

import SwiftUI

struct Loading: View {
    var body: some View {
        ZStack { //background
            //Color("BackG").ignoresSafeArea()
            LinearGradient(gradient: Gradient(colors: [Color("Lightblue"), Color("Darkblue")]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                Spacer()
                Image("Loading").resizable().aspectRatio(contentMode: .fit).frame(width: 350, height: 280, alignment: .center).padding(10)
                Rectangle().frame(width: 80, height: 3, alignment: .center).foregroundColor(Color("Lightblue")).padding(15)
                Text("DocNextDoor").font(Font.custom("FredokaOne-Regular", size: 42)).bold().multilineTextAlignment(.center).foregroundColor(Color(.white)).frame(width: 350).padding(5)
                Text("Slogan  !").font(.title3).italic().multilineTextAlignment(.center).foregroundColor(Color("Txtgrey")).frame(width: 350)
                Rectangle().frame(width: 80, height: 3, alignment: .center).foregroundColor(Color("Lightblue")).padding(20)
                Spacer()
            }
        }
    }
}

struct Loading_Previews: PreviewProvider {
    static var previews: some View {
        Loading()
    }
}
