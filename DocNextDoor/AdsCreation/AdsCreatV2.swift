//
//  AdsCreatV2.swift
//  DocNextDoor
//
//  Created by apprenant59 on 27/06/2022.
//

import SwiftUI



struct AdsCreatV2: View {
    
    @State private var showGreeting = true

    @State var ads: [Advertisement] = [ Advertisement(title: "titre", town: "ville", zipCode: "13500", description: "Ecrivez votre description ici...", contact: (Contact.init(name: "Andrea", mail: "andreamairie@gmail.com", phone: "0606060606")), transport: ([ColoredIcons.init(nameIcon: "figure.walk.circle", nameIconColored: "figure.wave", isColored: false)]), pict: ["image1", "image2"], speciality: "test1", patientsList: true, accomodationProvided: true)]



    var body: some View {
        NavigationView(){
            ScrollView{
                Spacer(minLength: 60)
                VStack(spacing: 12.0){
                AdsTextField(Title: "Titre", name: ads[0].title, maxCount: 10)
                AdsTextField(Title: "Spécialité", name: ads[0].speciality, maxCount: 10)
                AdsTextField(Title: "Ville", name: ads[0].town, maxCount: 15)
                AdsTextField(Title: "Code Postal", name: ads[0].zipCode, maxCount: 5)
                AdsTextField(Title: "Nom", name: ads[0].contact.name, maxCount: 10)
                AdsTextField(Title: "Mail", name: ads[0].contact.mail, maxCount: 30)
                
                }
                .navigationTitle("Crée votre annonce")
                .navigationBarTitleDisplayMode(.inline)
                }
            }
//        }
  }
}

struct AdsCreatV2_Previews: PreviewProvider {
    static var previews: some View {
        AdsCreatV2()
    }
}
