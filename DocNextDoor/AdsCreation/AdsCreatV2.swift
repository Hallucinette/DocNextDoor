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
            VStack {//Vstack header
            Text("Créer votre annonce").bold().font(.title2).padding(10)
            Rectangle().frame(width: 390, height: 3, alignment: .center).foregroundColor(Color("Lightblue")).padding(5)
            ScrollView{
                
                Spacer()//minLength: 60)
                VStack(spacing: 12.0){
                    
                    Group {
                        Text("Job")
//                            .multilineTextAlignment(.leading)
//                            .padding(.vertical)
//                            .font(.callout)
                           // .italic()
                            //.bold()
                      //  .font(.title2)
                        AdsTextField(Title: "Titre", name: ads[0].title, maxCount: 10)
                        AdsTextField(Title: "Spécialité", name: ads[0].speciality, maxCount: 10)
                    }
                    
                    Group {
                        Text("Image")
                            .padding(.vertical)
                        .font(.title2)
                        Adsimage()
                            .padding(.vertical)
                    }
                    
                    Group {
                        Text("Ville")
                            .padding(.vertical)
                        .font(.title2)
                        AdsTextField(Title: "Ville", name: ads[0].town, maxCount: 15)
                        AdsTextField(Title: "Code postal", name: ads[0].zipCode, maxCount: 5)
                    }
                    
                    Group {
                        Text("Contact")
                            .padding(.vertical)
                        .font(.title2)
                        AdsTextField(Title: "Nom", name: ads[0].contact.name, maxCount: 10)
                        AdsTextField(Title: "Mail", name: ads[0].contact.mail, maxCount: 30)
                    }
                    
                    VStack {
                        Text("Transport")
                            .padding(.vertical)
                        .font(.title2)
                        ScrollView(.horizontal, showsIndicators: true){
                                HStack(){
                            AdsPicto(nameIcon: "avionG", nameIconColored: "avionC", isColored: false)
                            AdsPicto(nameIcon: "metroG", nameIconColored: "metroC", isColored: false)
                            AdsPicto(nameIcon: "trainG", nameIconColored: "trainC", isColored: false)
                                }
                            }
                        .padding(.vertical)
                    }
                    VStack(spacing: 20) {
                        Toggle("Vente Patientel", isOn: $ads[0].patientsList)
                            .toggleStyle(SwitchToggleStyle(tint: Color("Darkblue")))
                        Toggle("Solution logement compris", isOn: $ads[0].accomodationProvided)
                            .toggleStyle(SwitchToggleStyle(tint: Color("Darkblue")))
                        }
                    .padding(.horizontal)
                    
                    HStack {
                         //   Apply_Ads(txt: "Annuler", colorCustom: "Orange")
                        
                        NavigationLink {
                            AdPublished().navigationBarBackButtonHidden(true).navigationBarHidden(true)
                        } label: {
                            Apply_Ads(txt: "Publier", colorCustom: "Darkblue")
                        }

//                          // EmailHelper.shared.sendEmail(subject: "Anything...", body: "", to: "")
//                            AdPublished()
//                         }) {
//                             //Text("Send Email")
//                             Apply_Ads(txt: "Publier", colorCustom: "Darkblue")
//                         }
                        
                       // Apply_Ads(txt: "Annuler", colorCustom: "Orange")
                        //Apply_Ads(txt: "Postuler", colorCustom: "Darkblue")
                        }
                    }
                }
            .navigationBarHidden(true)
            }
        }
    }
}

struct AdsCreatV2_Previews: PreviewProvider {
    static var previews: some View {
        AdsCreatV2()
    }
}
