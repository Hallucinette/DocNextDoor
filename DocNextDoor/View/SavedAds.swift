//
//  Favorites.2.swift
//  DocNextDoor
//
//  Created by Apprenant 11 on 20/06/2022.
//
import SwiftUI
import Foundation

struct SavedAds : View {
    @EnvironmentObject var profilControl : ProfileControl//a passer en binding ?
    @State var pickerList = 0
    
    func deleteAdF(ad: Advertisement) {
        profilControl.profilUser.adsFav.removeAll { ad2 in
            return ad.id == ad2.id
        }
    }
    
    func deleteAdA(ad: Advertisement) {
        profilControl.profilUser.adsApplied.removeAll { ad2 in
            return ad.id == ad2.id
        }
    }
    
    func transfAdF2ADA(ad: Advertisement) {
        profilControl.profilUser.adsApplied.append(ad)
        profilControl.profilUser.adsFav.removeAll { ad2 in
            return ad.id == ad2.id
        }
    }
    
    func transfAdA2AdF(ad: Advertisement) {
        profilControl.profilUser.adsFav.append(ad)
        profilControl.profilUser.adsApplied.removeAll { ad2 in
            return ad.id == ad2.id
        }
    }

    var body: some View {
        NavigationView {
        ZStack { //background
            Color("BackG").ignoresSafeArea()
            VStack { //full view
                VStack {//Vstack header
                    Text("Annonces sauvegardées").bold().font(.title2).padding(10)
                    Rectangle().frame(width: 390, height: 3, alignment: .center).foregroundColor(Color("Lightblue")).padding(5)
                    HStack { //Picker
                        Picker("List to show", selection: $pickerList) {
                                        Text("Annonces favorites").tag(0)
                                        Text("Annonces candiatées").tag(1)
                                    }.pickerStyle(.segmented).padding(30)
                    }.frame(width: 390, height: 40).padding()
                }//fin Vstack header
                Spacer()
                if profilControl.profilUser.adsApplied.isEmpty && pickerList == 1 {
                    VStack {
                        Image("NoFav").resizable().aspectRatio(contentMode: .fit).frame(width: 280, height: 350, alignment: .center)
                        Text("Vous n'avez encore candidaté à aucune annonce : continuez d'explorer les opportunités !").font(.body).italic().multilineTextAlignment(.center).foregroundColor(Color("Txtgrey")).frame(width: 350)
                        Spacer()
                    }
                }
                else if profilControl.profilUser.adsFav.isEmpty && pickerList == 0 {
                    VStack {
                        Image("NoFav").resizable().aspectRatio(contentMode: .fit).frame(width: 280, height: 350, alignment: .center)
                        Text("Vous n'avez pas encore d'annonce favorite : continuez d'explorer les opportunités !").font(.body).italic().multilineTextAlignment(.center).foregroundColor(Color("Txtgrey")).frame(width: 350)
                        Spacer()
                    }
                }
                else {
                    List {
                        ForEach( pickerList == 1 ? profilControl.profilUser.adsApplied : profilControl.profilUser.adsFav) {  ad in //affichage en liste
                            HStack {
                                NavigationLink(destination: DetailedAdUIView(ad: ad)){ //add parametre (ad: ad) --> DetailledAd((ad: ad))
                                    Image(ad.pict[0]).resizable().overlay(Circle().stroke(Color("Darkblue"), lineWidth: 4)).clipShape(Circle())//stroke Color = "\(ad.speciality)Color"
                                        .frame(width: 55, height: 55).padding(5)
                                    VStack {
                                        Spacer()
                                        Text(ad.title).font(.callout).bold().frame(
                                            maxWidth: .infinity,
                                            alignment: .leading).padding(0.2)
                                        HStack { //Txt Color = "\(ad.speciality)Color"
                                            Text(ad.speciality).font(.footnote).italic().bold()
                                                .foregroundColor(Color("Darkblue")).padding(0.2)
                                            Text("à \(ad.zipCode) \(ad.town)").font(.footnote).padding(0.2)
                                        }.frame(
                                            maxWidth: .infinity,
                                            alignment: .leading)
                                        /*HStack {
                                            Text(ad.description).foregroundColor(Color("Txtgrey")).font(.footnote).padding(3)
                                        }.frame(height: 50)*/
                                    }//fin Vsatck txt liste = titre, specialités, ville + CP et debut description
                                    .navigationTitle("").navigationBarHidden(true)
                                }//fin navigationLink
                            }.swipeActions(allowsFullSwipe: false) { //action on swipe and fin for each
                                Button {
                                    if pickerList == 1 {
                                        deleteAdA(ad: ad)
                                    }
                                    else {
                                        deleteAdF(ad: ad)
                                    }
                                } label: {
                                    Label("Supprimer", systemImage: "trash.fill")
                                }.tint(.red)
                                if pickerList == 0 {
                                    Button {
                                        transfAdF2ADA(ad: ad)
                                    } label: {
                                        Label("Déplacer dans Ann. candidatées", systemImage: "paperplane.fill")
                                    }
                                    .tint(Color("Lightblue"))//fin Hstack 1 element de la list
                                }//fin if button
                                else {
                                        Button {
                                            transfAdA2AdF(ad: ad)
                                            print("Annonce deplacée dans Annonces favorites")
                                        } label: {
                                            Label("Déplacer dans Ann. favorites", systemImage: "star.fill")
                                        }
                                        .tint(Color("Lightblue"))
                                }//fin else button
                            }//fin action on swipe//fin HSatck 1 element de la liste
                        }.listRowBackground(Color("BackG"))
                    }//fin list
                }//fin else list non vide
            }//fin Vstack full view
        }//fin ZStack background color
        .navigationTitle("").navigationBarHidden(true).navigationBarBackButtonHidden(true)
        }.accentColor(Color("Darkblue"))
    }//end body
}//end Favorites View

struct SavedAds_Previews: PreviewProvider {
    static var previews: some View {
        SavedAds().environmentObject(ProfileControl())//.previewDevice(PreviewDevice(rawValue: "iPhone 13"))
}

}

