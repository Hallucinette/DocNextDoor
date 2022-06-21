//
//  AdDiscoverUIView.swift
//  DocNextDoor
//
//  Created by Apprenant 91 on 17/06/2022.
//

import SwiftUI

struct AdDiscoverUIView: View {
    var ads : [Advertisement]
    
    var body: some View {
        ZStack {
            Color("BackG").ignoresSafeArea()
            VStack {
                HStack (spacing: 25){
                    Text("Annonces à la une")
                        .bold()
                        .font(.title2)
                    
                    Image(systemName: "pencil.circle")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color("Darkblue"))
                }
                Rectangle().frame(width: 600, height: 3, alignment: .center).foregroundColor(Color("Lightblue"))
                List(ads) { ad in
                    AdRow(ad: ad)
                }
            }
        }
    }
}


// A view that shows the data for one Ad.
struct AdRow: View {
    var ad: Advertisement
    
    var body: some View {
        ScrollView {
            HStack{
                VStack {
                    Text(ad.title).font(.headline).frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity)
                    Image(ad.pict[0]).resizable() .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("Darkblue"), lineWidth: 4)
                    )
                    .frame(width: 350, height: 150).padding(5)
                }
            }
            Spacer()
            
            ForEach((1...4).reversed(), id: \.self) {_ in
                HStack {
                    VStack {
                        Text(ad.title).font(.headline).frame(
                            maxWidth: .infinity,
                            maxHeight: .infinity)
                        Image(ad.pict[0]).resizable()
                            .frame(width: 90, height: 50).padding(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("Darkblue"), lineWidth: 4)
                            )
                    }
                    VStack {
                        Text(ad.title).font(.headline).frame(
                            maxWidth: .infinity,
                            maxHeight: .infinity)
                        Image(ad.pict[0]).resizable()
                            .frame(width: 90, height: 50).padding(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("Darkblue"), lineWidth: 4)
                            )
                    }
                }
            }
        }
    }
}


struct AdDiscoverUIView_Previews: PreviewProvider {
    static var previews: some View {
        AdDiscoverUIView(ads: [ Advertisement( title: "Médecin généraliste à Plumebec (51420)", town: "Plumebec", zipCode: 51420, description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: .init(name:  "Annie lhation", mail: "monmail@gg.com"), pict: ["Plumebec"], speciality: "", patientsList: true, accomodationProvided: true)])
    }
}
