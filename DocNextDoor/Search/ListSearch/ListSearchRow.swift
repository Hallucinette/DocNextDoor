//
//  ListSearchRow.swift
//  DocNextDoor
//
//  Created by apprenant55 on 29/06/2022.
//

import SwiftUI

struct ListSearchRow: View {
    
    var ad: Advertisement
    @EnvironmentObject var profilControl : ProfileControl
    
    func deleteAdF(ad: Advertisement) {
        profilControl.profilUser.adsFav.removeAll { ad2 in
            return ad.id == ad2.id
        }
    }
  @State var favIcon: String = "star"
    
    var body: some View {
        
        
     
        
        //        NavigationLink {
        //            // Destination View(ad: ad)
        //        } label: {
        HStack {
            Image(ad.pict[0]).resizable().overlay(Circle().stroke(Color("Darkblue"), lineWidth: 4)).clipShape(Circle())//stroke Color = "\(ad.speciality)Color"
                .frame(width: 55, height: 55).padding(20)
            VStack {
                HStack{
                    Text(ad.title).font(.callout).bold().foregroundColor(.black).multilineTextAlignment(.leading).frame(
                    maxWidth: .infinity,
                    alignment: .leading).padding(0.2)
                }.frame(height: 45, alignment: .leading)
                HStack { //Txt Color = "\(ad.speciality)Color"
                    HStack {
                        Text(ad.speciality).font(.footnote).italic().bold()
                            .foregroundColor(Color("Darkblue")).padding(0.2)
                    }.frame(height:20)
                    Text("à \(ad.zipCode) \(ad.town)").font(.footnote).foregroundColor(.black).padding(0.2)
                }
//                HStack {
//                    Text(ad.description).foregroundColor(Color("Txtgrey")).font(.footnote).padding(0.5)
//                }.frame(height: 50)
            }//fin Vsatck txt liste = titre, specialités, ville + CP et debut description
            .navigationTitle("").navigationBarHidden(true)
            
            //        }
            Button (action: {
                if favIcon == "star" {
                    favIcon = "star.fill"
//                    profilControl.profilUser.adsFav.append(ad)
                    
                } else {
                    favIcon = "star"
//                    deleteAdF(ad: ad)
                    
                }
                
            }, label: {
                Image(systemName: favIcon)
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(Color("Darkblue"))
            
                
            })
        }
        
        
        
        
        
        
        
        
        
        
        
    }
}

struct ListSearchRow_Previews: PreviewProvider {
    static var previews: some View {
        //        NavigationView {
        ListSearchRow(ad: ads[0])
        //        }
    }
}
