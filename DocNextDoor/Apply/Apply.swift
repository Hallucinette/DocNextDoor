//
//  Apply.swift
//  DocNextDoor
//
//  Created by Apprenant 11 on 23/06/2022.
//

import SwiftUI

struct Apply: View {
    var body: some View {
        ZStack { //background
            Color("BackG").ignoresSafeArea()
            VStack { //full view
                Spacer()
                
                Text("Ecrivez votre lettre de motivation").font(.body).bold().frame(
                    maxWidth: .infinity,
                    alignment: .leading).padding(.leading, 20)
                
                Text("Verifiez votre CV").font(.body).bold().frame(
                    maxWidth: .infinity,
                    alignment: .leading).padding(.leading, 20)
                HStack {
                    NavigationLink(destination: PDFUIView()) {
                        ZStack {
                            Color(.white)
                            HStack {
                                Image(systemName: "doc.append").resizable().frame(width: 30, height: 35).foregroundColor(Color("Lightblue")).padding(.leading, 15)
                                Text("Curriculum Vitæ").font(.body).bold().foregroundColor(Color(.black)).padding(5)
                                Spacer()
                                Image(systemName: "chevron.right").foregroundColor(Color("Txtgrey")).padding(.trailing, 10)
                            }//fin Hstack contenu CV
                        }.frame(width: 350, height: 60, alignment: .center).cornerRadius(18)
                    }//fin NavigationLink
                }.padding(20)//fin Hstack CV
        Text("Postuler")
                    .font(.title3).bold()
            .padding(10)
            .padding(.horizontal, 30)
                .background(Color("Darkblue"))
                .cornerRadius(45)
                .foregroundColor(.white)
                .padding(20)
        }//fin VStcak full view
        }//fin Zstack backG
    }
}

struct Apply_Previews: PreviewProvider {
    static var previews: some View {
        Apply()
    }
}
