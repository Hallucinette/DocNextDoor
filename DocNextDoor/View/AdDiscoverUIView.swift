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
        
        ZStack {//background color
            Color("BackG").ignoresSafeArea()
            // ScrollView {
            NavigationView {
                VStack {//full view vstck
                    HStack (spacing: 25){//Hstack header
                        Text("Annonces à la une")
                            .bold()
                            .font(.title2)
                        Spacer().frame(width : 5)
                        
                        
                        HStack{
                            NavigationLink(destination:CreationAdUIView()) {
                                Image(systemName: "pencil.circle")
                                    .resizable()
                                    .renderingMode(.template)
                                    .formatIcon()
                                
                            }.navigationBarTitleDisplayMode(.inline)
                        }
                    }//fin Hstack header
                    addBlueLine()
                    
                    HStack {
                        
                        NavigationLink(destination:DetailedAdUIView(ad: ads[0])) {
                            VStack {
                                Text(ads[0].title).formatLargeText()
                                Image(ads[0].pict[0]).resizable().formatMediumImage()
                            }
                        }.navigationBarTitleDisplayMode(.inline)
                        
                    }.background(.white)
                    
                    List(ads) { ad in
                        NavigationLink(destination:DetailedAdUIView(ad: ad)) {
                            AdView(ad: ad)
                        }.navigationBarTitleDisplayMode(.inline)
                    }
                }//end full view vstck
                .navigationBarHidden(true)
            }// nav link
            
            //}
        }
    }
}



// A view that shows the data for one Ad.
struct AdView: View {
    var ad: Advertisement
    
    var body: some View {
        
        HStack(alignment: .bottom, spacing: 16) {
            VStack(alignment: .leading, spacing: 16) {
                Text(ad.title).formatText()
                Image(ad.pict[0]).resizable().formatSmallImage()
            }.padding(.leading, 28.0)
            
            VStack(alignment: .leading, spacing: 16) {
                Text(ad.title).formatText()
                Image(ad.pict[0]).resizable().formatSmallImage()
            }.padding(.trailing, 28.0)
        }
    }
}



struct AdDiscoverUIView_Previews: PreviewProvider {
    static var previews: some View {
        AdDiscoverUIView(ads: [ Advertisement( title: "Médecin généraliste à Plumebec (51420)", town: "Plumebec", zipCode: "51420", description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: .init(name:  "Annie lhation", mail: "monmail@gg.com"), pict: ["Plumebec"], speciality: "Médecin généraliste", patientsList: true, accomodationProvided: true)])
    }
}
