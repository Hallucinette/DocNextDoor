//
//  DetailedAdUIView.swift
//  DocNextDoor
//
//  Created by Apprenant 91 on 21/06/2022.
//

import SwiftUI

struct DetailedAdUIView: View {
    var ad: Advertisement
    
    var body: some View {
        
        ZStack {//background color
            Color("BackG").ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading) {// vstack header
                    //Text("gckutdu")
                    AdDetailView(ad: ad)
                }//end vstack header
            }// end ScrollView
        }// end zstack
    }
}

// A view that shows the data for one Ad.
struct AdDetailView: View {
    var ad: Advertisement
    
    var body: some View {
        
        HStack(alignment: .bottom, spacing: 16) {
            VStack(spacing: 16) {
                Group{
                    Text(ad.speciality).formatTinyOrangeText()
                    Text(ad.zipCode).formatTinyGreyText()
                    Text(ad.title).formatText()
                    Image(ad.pict[0]).resizable().formatMediumImage()
                }
                Group{
                    Text("Contact").bold().underline().formatTitle()
                    Text(ad.contact.name).formatText()
                    Text(ad.contact.mail).formatText()
                }
                Group{
                    Text("Description du poste").bold().underline().formatTitle()
                    Text(ad.description).formatText()
                }
                Group{
                    Text("Avantages de la ville").bold().underline().formatTitle()
                   // Text(ad.patientsList).formatText()
                }
            }
            
            
        }
    }
}


struct DetailedAdUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedAdUIView(ad:  Advertisement( title: "Médecin généraliste à Plumebec (51420)", town: "Plumebec", zipCode: "51420", description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: .init(name:  "Annie lhation", mail: "monmail@gg.com"), pict: ["Plumebec"], speciality: "Médecin généraliste", patientsList: true, accomodationProvided: true))
    }
}
