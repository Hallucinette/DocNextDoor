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
                }.padding(30)
                
                /*
                    if (profilUser.adsFav != nil) { //si on a des favoris
                        NavigationView {
                            List(profilUser.adsFav!) { ad in //affichage en liste
                            //NavigationLink(destination: DetailledAd(ad: ad)){
                                    HStack {
                                    Image(ad.pict[0]).resizable().overlay(Circle().stroke(Color("Darkblue"), lineWidth: 4)).clipShape(Circle())
                                            .frame(width: 50, height: 50).padding(5)
                                        VStack {
                                            Spacer()
                                            Text(ad.title).font(.headline).frame(
                                            maxWidth: .infinity,
                                            maxHeight: .infinity,
                                            alignment: .leading)
                                            Text(ad.speciality).font(.footnote).italic().bold()
                                                .foregroundColor(Color("DarkBlue")).frame(
                                                    maxWidth: .infinity,
                                                    maxHeight: .infinity,
                                                    alignment: .leading)
                                            Text("\(ad.zipCode) \(ad.town)").font(.footnote).frame(
                                                    maxWidth: .infinity,
                                                    maxHeight: .infinity,
                                                    alignment: .leading)
                                            Text(ad.description).foregroundColor(Color("Txtgrey")).font(.caption).frame(
                                                maxWidth: .infinity,
                                                maxHeight: .infinity,
                                                alignment: .leading)
                                            Spacer()
                                        }
                                    }
                            }
                            }.accentColor(Color("RED"))
                    }
                    else { //si pas de favoris */
                        VStack {
                            Spacer()
                            Image("NoFav").resizable().frame(width: 230, height: 330, alignment: .center).padding(30)
                            Text("Vous n'avez pas encore d'annonce favorite : continuez d'explorer les opportunités !").foregroundColor(Color("Txtgrey")).font(.body).frame(width: 330, height: 70, alignment: .center)
                            Spacer()
                        }
                    //}
                    
                }
            }
        }
}

struct Favourites_Previews: PreviewProvider {
    static var previews: some View {
        Favourites(profilUser: .init(isDoc: true, name: "Annie lhation", pp: "P1", speciality: "Médecin généraliste", description: "Ecole de médecine de Marseille", contact: .init(name:  "Annie lhation", mail: "monmail@gg.com"), allowNotif: true, adsApplied: [], adsFav : []))
    }
}
