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
        NavigationView{
 //           ScrollView(.vertical){
            VStack(){
           //     Adsimage()
          //      VStack(){
     //       List{
                TextField("Titre : ", text: $ads[0].title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .keyboardType(.numberPad)
              //      AdsEdit(name: "Test", maxCount: 17)
  //              }
                }
                .navigationTitle("Crée votre annonce")
                .navigationBarTitleDisplayMode(.inline)
                }
            }
//        }
//  }
}

struct AdsCreatV2_Previews: PreviewProvider {
    static var previews: some View {
        AdsCreatV2()
    }
}
