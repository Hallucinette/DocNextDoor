//
//  Apply.swift
//  DocNextDoor
//
//  Created by Apprenant 11 on 23/06/2022.
//

import SwiftUI


struct Apply: View {
    @EnvironmentObject var profilControl : ProfileControl
    @State var ad : Advertisement
    @State var lettre : String = ""
    var body: some View {
        ZStack { //background
            Color("BackG").ignoresSafeArea()
            VStack { //full view
                VStack {//Vstack header
                    Text("Rédiger votre candidature").bold().font(.title2).padding(10)
                    addBlueLine()
                    /*Rectangle().frame(width: 390, height: 3, alignment: .center).foregroundColor(Color("Lightblue")).padding(5)*/
                }//fin Vstack header
                Text("Écrivez votre lettre de motivation").font(.body).bold().frame(
                    maxWidth: .infinity,
                    alignment: .leading).padding(.leading, 20)
                
                AdsTextEditor(Title: "Madame, Monsieur, ... \n \n \n \n ", name: lettre, maxCount: 3000)
                
                Text("Vérifiez votre Curriculum Vitæ").font(.body).bold().frame(
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
                }.padding(.horizontal, 20)//fin Hstack CV
                Text("Ajouter ou modifier votre CV depuis les paramètres.").font(.footnote).italic().multilineTextAlignment(.leading).foregroundColor(Color("Txtgrey")).frame(width: 350, height: 20, alignment: .leading)
                
                Button(action: {
                    profilControl.profilUser.adsApplied.append(ad)
                }) {
                    NavigationLink(destination: CVSent().navigationBarBackButtonHidden(true).navigationBarHidden(true)) {
                        Text("Postuler").bold()
                            .addBlueButton()
                    }
                }.padding(15)
                Spacer().padding(.bottom, 150)//fin button
                
                //a check si pas dans fav = eviter les doublons ni dans ad applied avant = si pas deja postuler
                
                //}//fin navLink
            }.frame(width: 380)//fin VStcak full view
        }//fin Zstack backG
    }
}

struct Apply_Previews: PreviewProvider {
    static var previews: some View {
        Apply(ad: ads[2]).environmentObject(ProfileControl())
    }
}

