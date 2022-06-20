import SwiftUI

struct Favourites: View {
    var profilUser : ProfilUser
    var body: some View {
        ZStack { //background
            Color("BackG").ignoresSafeArea()
            VStack {
                VStack { //Header
                    Text("Annonces sauvegardées").bold().font(.title2)
                    Rectangle().frame(width: 600, height: 3, alignment: .center).foregroundColor(Color("Lightblue"))
                    }.padding(20)
                
                    if (profilUser.adsFav != nil) { //si on a des favoris
                        NavigationView {
                            List {
                            ForEach(profilUser.adsFav!) {  ad in //affichage en liste
                            //NavigationLink(destination: DetailledAd(ad: ad)){
                                HStack {
                                    VStack {
                                        Image(ad.pict[0]).resizable().overlay(Circle().stroke(Color("Darkblue"), lineWidth: 4)).clipShape(Circle())
                                            .frame(width: 55, height: 55).padding(3)
                                    }
                                    
                                        VStack {
                                            Spacer()
                                            Text(ad.title).font(.callout).bold().frame(
                                                maxWidth: .infinity,
                                                maxHeight: .infinity,
                                                alignment: .leading).padding(0.2)
                                            HStack {
                                                Text(ad.speciality).font(.footnote).italic().bold()
                                                    .foregroundColor(Color("Darkblue")).padding(0.2)
                                                Text("à \(ad.zipCode) \(ad.town)").font(.footnote).padding(0.2)
                                            }.frame(
                                                maxWidth: .infinity,
                                                maxHeight: .infinity,
                                                alignment: .leading)
                                            HStack {
                                                Text(ad.description).foregroundColor(Color("Txtgrey")).font(.footnote).padding(3)
                                            }.frame(width: 260, height: 50)
                                            
                                        }//fin Vsatck txt liste = titre, specialités, ville + CP et debut description
                                }//fin Hstack 1 element de la liste
                            
                            }.listRowBackground(Color("BackG"))//fin For Each
                            }.frame(width: 400, height: 700, alignment: .center).accentColor(Color("RED")) //fin list
                            }//fin navigation view
                        }//fin if
                    else { //si pas de favoris
                        VStack {
                            Spacer()
                            Image("NoFav").resizable().frame(width: 280, height: 240, alignment: .center).padding(30)
                            Text("Vous n'avez pas encore d'annonce favorite : continuez d'explorer les opportunités !").foregroundColor(Color("Txtgrey")).font(.body).italic().frame(width: 335, height: 70, alignment: .center).multilineTextAlignment(.center)
                            Spacer()
                            Spacer()
                        }//fin Vstack illu + txt no favorite
                    }//fin else
                    
                }//fin VStack full screen
            }//fin Zstack pour le backgroud
        }//fin body
}//fin Favourites view

struct Favourites_Previews: PreviewProvider {
    static var previews: some View {
        Favourites(profilUser: .init(isDoc: true, name: "Annie lhation", pp: "P1", speciality: "Médecin généraliste", description: "Ecole de médecine de Marseille", contact: .init(name:  "Annie lhation", mail: "monmail@gg.com"), allowNotif: true, adsFav: [Advertisement.init( title: "Médecin à Plumebec", town: "Plumebec", zipCode: "51420", description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: .init(name: "Mairie de PLUMELEC", mail: ""), pict: [""], speciality: "Médecin généraliste", patientsList: true, accomodationProvided: true), Advertisement.init( title: "Médecin à Tours", town: "Tours", zipCode: "XXXXX", description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: .init(name: "Mairie de PLUMELEC", mail: ""), pict: [""], speciality: "Médecin généraliste", patientsList: true, accomodationProvided: true)]))
    }
}
