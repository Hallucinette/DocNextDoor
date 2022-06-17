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
                
                    //if (profilUser.adsFav != nil) { //si on a des favoris
                        NavigationView {
                            List(profilUser.adsFav!) { ad in //affichage en liste
                            //NavigationLink(destination: DetailledAd(ad: ad)){
                                HStack {
                                    Image(ad.pict[0]).resizable().overlay(Circle().stroke(Color("Darkblue"), lineWidth: 4)).clipShape(Circle())
                                            .frame(width: 50, height: 50).padding(5)
                                        VStack {
                                            Spacer()
                                            HStack {
                                                Text(ad.title).font(.headline).padding(1)
                                            }
                                                Text(ad.speciality).font(.callout).italic().bold()
                                                    .foregroundColor(Color("Darkblue")).padding(0.2)
                                                Text("\(ad.zipCode) \(ad.town)").font(.callout).padding(0.2)
                                            
                                            HStack {
                                                Text(ad.description).foregroundColor(Color("Txtgrey")).font(.footnote)
                                            }.frame(width: 270, height: 40)
                                            Spacer()
                                        }
                                    }
                                //}
                                }
                            }.accentColor(Color("RED"))
                    //}
                    /*£else { //si pas de favoris
                        VStack {
                            Spacer()
                            Image("NoFav").resizable().frame(width: 280, height: 240, alignment: .center).padding(30)
                            Text("Vous n'avez pas encore d'annonce favorite : continuez d'explorer les opportunités !").foregroundColor(Color("Txtgrey")).font(.body).italic().frame(width: 335, height: 70, alignment: .center).multilineTextAlignment(.center)
                            Spacer()
                            Spacer()
                        }
                    }*/
                    
                }
            }
        }
}

struct Favourites_Previews: PreviewProvider {
    static var previews: some View {
        Favourites(profilUser: .init(isDoc: true, name: "Annie lhation", pp: "P1", speciality: "Médecin généraliste", description: "Ecole de médecine de Marseille", contact: .init(name:  "Annie lhation", mail: "monmail@gg.com"), allowNotif: true, adsFav: [Advertisement.init( title: "Médecin à Plumebec", town: "Plumebec", zipCode: "51420", description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: .init(name: "Mairie de PLUMELEC", mail: ""), pict: [""], speciality: "Médecin généraliste", patientsList: true, accomodationProvided: true)]))
    }
}
