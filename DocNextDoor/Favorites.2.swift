//
//  Favorites.2.swift
//  DocNextDoor
//
//  Created by Apprenant 11 on 20/06/2022.
//
import SwiftUI
import Foundation

func transferAd(@State atransf: Advertisement, @State list: [Advertisement] ) {
    //list.append(atransf)
    //supprAd(atransf)
}

struct Favorites_2: View {
    @State var profilUser : ProfilUser //a passer en binding ?
    @State var pickerList = 0
    
    func deleteAdF(ad: Advertisement) {
        profilUser.adsFav.removeAll { ad2 in
            return ad.id == ad2.id
        }
    }
    
    func deleteAdA(ad: Advertisement) {
        profilUser.adsApplied.removeAll { ad2 in
            return ad.id == ad2.id
        }
    }
    
    func transfAdF2ADA(ad: Advertisement) {
        profilUser.adsApplied.append(ad)
        profilUser.adsFav.removeAll { ad2 in
            return ad.id == ad2.id
        }
    }
    
    func transfAdA2AdF(ad: Advertisement) {
        profilUser.adsFav.append(ad)
        profilUser.adsApplied.removeAll { ad2 in
            return ad.id == ad2.id
        }
    }

    var body: some View {
        ZStack { //background
            Color("BackG").ignoresSafeArea()
            VStack { //full view
                VStack {//Vstack header
                    Text("Annonces sauvegardées").bold().font(.title2).padding(10)
                    Rectangle().frame(width: 600, height: 3, alignment: .center).foregroundColor(Color("Lightblue")).padding(5)
                    HStack { //Picker
                        Picker("List to show", selection: $pickerList) {
                                        Text("Annonces favorites").tag(0)
                                        Text("Annonces candiatées").tag(1)
                                    }.pickerStyle(.segmented).padding(30)
                    }.frame(width: 400, height: 40).padding()
                }//fin Vstack header
                Spacer()
                if profilUser.adsApplied.isEmpty && pickerList == 1 {
                    VStack {
                        Image("NoFav").resizable().aspectRatio(contentMode: .fit).frame(width: 280, height: 350, alignment: .center)
                        Text("Vous n'avez encore candidaté à aucune annonce : continuez d'explorer les opportunités !").font(.body).italic().multilineTextAlignment(.center).foregroundColor(Color("Txtgrey")).frame(width: 350)
                        Spacer()
                    }
                }
                else if profilUser.adsFav.isEmpty && pickerList == 0 {
                    VStack {
                        Image("NoFav").resizable().aspectRatio(contentMode: .fit).frame(width: 310, height: 350, alignment: .center)
                        Text("Vous n'avez pas encore d'annonce favorite : continuez d'explorer les opportunités !").font(.body).italic().multilineTextAlignment(.center).foregroundColor(Color("Txtgrey")).frame(width: 350)
                        Spacer()
                    }
                }
                else {
                    List {
                        ForEach( pickerList == 1 ? profilUser.adsApplied : profilUser.adsFav) {  ad in //affichage en liste
                            HStack {
                                NavigationLink(destination: DetailledAd()){ //add parametre (ad: ad) --> DetailledAd((ad: ad))
                                    Image(ad.pict[0]).resizable().overlay(Circle().stroke(Color("Darkblue"), lineWidth: 4)).clipShape(Circle())//stroke Color = "\(ad.speciality)Color"
                                        .frame(width: 55, height: 55).padding(3)
                                    VStack {
                                        Spacer()
                                        Text(ad.title).font(.callout).bold().frame(
                                            maxWidth: .infinity,
                                            maxHeight: .infinity,
                                            alignment: .leading).padding(0.2)
                                        HStack { //Txt Color = "\(ad.speciality)Color"
                                            Text(ad.speciality).font(.footnote).italic().bold()
                                                .foregroundColor(Color("Darkblue")).padding(0.2)
                                            Text("à \(ad.zipCode) \(ad.town)").font(.footnote).padding(0.2)
                                        }.frame(
                                            maxWidth: .infinity,
                                            maxHeight: .infinity,
                                            alignment: .leading)
                                        HStack {
                                            Text(ad.description).foregroundColor(Color("Txtgrey")).font(.footnote).padding(3)
                                        }.frame(height: 50)
                                    }//fin Vsatck txt liste = titre, specialités, ville + CP et debut description
                                }.navigationTitle("")//fin navigationLink
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
                    }.frame(width: 440, alignment: .center)//fin list
                }//fin else list non vide
            }//fin Vstack full view
        }//fin ZStack background color
    }//end body
}//end Favorites View

struct FFavorites_2_Previews: PreviewProvider {
    static var previews: some View {
        Favorites_2(profilUser: .init(isDoc: true, name: "Annie lhation", pp: "P1", speciality: "Médecin généraliste", description: "Ecole de médecine de Marseille", contact: .init(name:  "Annie lhation", mail: "monmail@gg.com"), allowNotif: true, adsApplied: [], adsFav: [Advertisement.init( title: "Médecin à Plumebec", town: "Plumebec", zipCode: "51420", description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: .init(name: "Mairie de PLUMELEC", mail: ""), pict: [""], speciality: "Médecin généraliste", patientsList: true, accomodationProvided: true), Advertisement.init( title: "Médecin à Tours", town: "Tours", zipCode: "XXXXX", description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: .init(name: "Mairie de PLUMELEC", mail: ""), pict: [""], speciality: "Médecin généraliste", patientsList: true, accomodationProvided: true)])).previewDevice(PreviewDevice(rawValue: "iPhone 13"))
        Favorites_2(profilUser: .init(isDoc: true, name: "Annie lhation", pp: "P1", speciality: "Médecin généraliste", description: "Ecole de médecine de Marseille", contact: .init(name:  "Annie lhation", mail: "monmail@gg.com"), allowNotif: true, adsApplied: [Advertisement.init( title: "Médecin à Plumebec", town: "Plumebec", zipCode: "51420", description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: .init(name: "Mairie de PLUMELEC", mail: ""), pict: [""], speciality: "Médecin généraliste", patientsList: true, accomodationProvided: true), Advertisement.init( title: "Médecin à Tours", town: "Tours", zipCode: "XXXXX", description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: .init(name: "Mairie de PLUMELEC", mail: ""), pict: [""], speciality: "Médecin généraliste", patientsList: true, accomodationProvided: true)], adsFav: [])).previewDevice(PreviewDevice(rawValue: "iPhone 13"))
    }
}


