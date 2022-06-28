//
//  AdsCreat.swift
//  DocNextDoor
//
//  Created by apprenant59 on 20/06/2022.
//

import SwiftUI



struct AdsCreat: View {
    
    @State private var showGreeting = true
    
    @State var ads: [Advertisement] = [ Advertisement(title: "titre", town: "ville", zipCode: "13500", description: "Ecrivez votre description ici...", contact: (Contact.init(name: "Andrea", mail: "andreamairie@gmail.com", phone: "0606060606")), transport: ([ColoredIcons.init(nameIcon: "figure.walk.circle", nameIconColored: "figure.wave", isColored: false)]), pict: ["image1", "image2"], speciality: "test1", patientsList: true, accomodationProvided: true)]
    
    
    
    var body: some View {
        ZStack {
            VStack{
                Form {
                    Section {
                        TextField("Titre : ", text: $ads[0].title)
                            .keyboardType(.numberPad)
                           // .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Ville : ", text: $ads[0].town)
                            .keyboardType(.numberPad)
                        TextField("Code postal : ", text: $ads[0].zipCode )
                            .keyboardType(.decimalPad)
                    }
                    Adsimage()
                    Section {
                        TextField("name : ", text: $ads[0].contact.name)
                            .keyboardType(.numberPad)
                        TextField("mail : ", text: $ads[0].contact.mail)
                            .keyboardType(.numberPad)
                    }
                    ZStack {
                        TextEditor(text: $ads[0].description)
                        Text(ads[0].description).opacity(0).padding(.all, 8) // <- This will solve the issue if it is in the same ZStack
                            .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 50)
                    }
//                    Section {
//                     //   TextField("description : ", text: $ads[0].description)
//                     //       .keyboardType(.numberPad)
//                        }
  //                  }
                    HStack{
                    AdsPicto(nameIcon: "figure.walk.circle", nameIconColored: "figure.wave", isColored: false)
                    }
                    VStack {
                        Toggle("vente Patientel", isOn: $ads[0].patientsList)
                        Toggle("Solution logement compris", isOn: $ads[0].accomodationProvided)
                    }
                }
            }
        }
    }
}

struct AdsCreat_Previews: PreviewProvider {
    static var previews: some View {
        AdsCreat()
    }
}
