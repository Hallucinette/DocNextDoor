//
//  ListSearchView.swift
//  DocNextDoor
//
//  Created by apprenant55 on 29/06/2022.
//

import SwiftUI

struct ListSearchView: View {
    
//    ListSearchRow(ad: Advertisement(title: "Médecin généraliste à Plumebec (51420)", town: "Plumebec", zipCode: "51420", description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: Contact(name:  "Annie lhation", mail: "monmail@gg.com"), pict: ["Plumebec"], speciality: "", patientsList: true, accomodationProvided: true), starIcon: ColoredIcons(nameIcon: <#T##String#>, nameIconColored: <#T##String#>, isColored: <#T##Bool#>), user: <#T##ProfilUser#>)
//    ListSearchRow(ad: <#T##Advertisement#>, starIcon: <#T##ColoredIcons#>, user: <#T##ProfilUser#>)
//    ListSearchRow(ad: <#T##Advertisement#>, starIcon: <#T##ColoredIcons#>, user: <#T##ProfilUser#>)
    
    
    /*
     
     */
    var body: some View {
        
        List(ads){ ad in
            NavigationLink {
                DetailedAdUIView(ad: ad)
            } label: {
                AdDetailView(ad: ad)
            }
        }
    }
}

struct ListSearchView_Previews: PreviewProvider {
    static var previews: some View {
        ListSearchView()
    }
}
