//
//  Apply.swift
//  DocNextDoor
//
//  Created by Apprenant 11 on 23/06/2022.
//

import SwiftUI

struct Apply: View {
    @EnvironmentObject var profilControl : ProfileControl
    //@Binding var profilUser : ProfilUser
    @Binding var ad : Advertisement
    var body: some View {
        ZStack { //background
            Color("BackG").ignoresSafeArea()
            VStack { //full view
                VStack {//Vstack header
                    Text("Rédiger votre candidature").bold().font(.title2).padding(10)
                    Rectangle().frame(width: 600, height: 3, alignment: .center).foregroundColor(Color("Lightblue")).padding(5)
                }//fin Vstack header
                Text("Écrivez votre lettre de motivation").font(.body).bold().frame(
                    maxWidth: .infinity,
                    alignment: .leading).padding(.leading, 20)
                
                TxtFieldApply(icon: "checkmark.seal.fill", nbCar: 3000, txt: "Madame, Monsieur, ...")
                
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
                Spacer()
                Button(action: {
                    profilControl.profilUser.adsApplied.append(ad)
                 }) {
                     NavigationLink(destination: CVSent().navigationBarBackButtonHidden(true).navigationBarHidden(true)) {
                         Text("Postuler")
                                     .font(.title3).bold()
                             .padding(10)
                             .padding(.horizontal, 30)
                                 .background(Color("Darkblue"))
                                 .cornerRadius(45)
                                 .foregroundColor(.white)
                                 .padding(20)
                     }
                 }//fin button
                        
                        //a check si pas dans fav = eviter les doublons ni dans ad applied avant = si pas deja postuler
                        
                //}//fin navLink
            }.frame(width: 400)//fin VStcak full view
        }//fin Zstack backG
    }
}
/*
struct Apply_Previews: PreviewProvider {
    static var previews: some View {
        Apply(profilUser: .init(isDoc: true, name: "Annie Hilation", pp: "P1", speciality: "Médecin généraliste", description: "Ecole de médecine de Marseille", contact: .init(name:  "Annie lhation", mail: "monmail@gg.com"), allowContact: true, allowNotif: true, adsApplied: [], adsFav:  [Advertisement.init( title: "Médecin à Tours", town: "Tours", zipCode: "XXXXX", description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: .init(name: "Mairie de PLUMELEC", mail: ""), pict: [""], speciality: "Médecin généraliste", patientsList: true, accomodationProvided: true)]), ad : Advertisement.init( title: "Médecin à Plumebec", town: "Plumebec", zipCode: "51420", description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: .init(name: "Mairie de PLUMELEC", mail: ""), pict: [""], speciality: "Médecin généraliste", patientsList: true, accomodationProvided: true)).previewDevice(PreviewDevice(rawValue: "iPhone 13"))
    }
}
*/
