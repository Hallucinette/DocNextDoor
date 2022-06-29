//
//  ListSearchRow.swift
//  DocNextDoor
//
//  Created by apprenant55 on 29/06/2022.
//

import SwiftUI

struct ListSearchRow: View {
  
    @Binding var ad: Advertisement
    @Binding var star : ColoredIcons
    @Binding var user : ProfilUser
    
    var body: some View {
    
        HStack {
            Image(ad.pict[0])
                .resizable()
                .clipShape(Circle())
                .frame(maxWidth: 72, maxHeight: 72)
                .overlay(Circle()
                    .stroke(Color("Darkblue"), lineWidth: 2))
                .padding()
            VStack(alignment: .leading){
                Text(ad.title)
                    .bold()
                    .textCase(.uppercase)
                    .padding(.bottom, 1)
                Text(ad.speciality)
                    .bold()
                    .italic()
                    .foregroundColor(Color("Darkblue"))
                Text(ad.zipCode+" "+ad.town)
                    .bold()
                    .padding(.bottom, 0.5)
                Text(ad.description)
                    .foregroundColor(.gray)
            }
            Button (action: {
                user.adsFav.append(ad)
            }, label: {
                Image(systemName: "star")
                    .font(.largeTitle)
                    .padding()
                
//                Image(star.isColored == true ? star.nameIconColored : star.nameIcon)
//                    .font(.largeTitle)
//                    .foregroundColor(Color("Darkblue"))
//                    .frame(maxWidth: 8, maxHeight: 8)
            
            }) // .clipShape(Circle())
            
            
        }
        
        
         
         
         
        
      
     
       
        

            }
        }
        
        struct ListSearchRow_Previews: PreviewProvider {
            static var previews: some View {
                ListSearchRow(ad: .constant (Advertisement(title: "MedGen à Toulon", town: "Toulon", zipCode: "83000", description: "Plage et beau temps, patientèle patiente.", benefits: "Facilités d'installation", contact: Contact(name: "SEA Nirre", mail: "vacHealth@fake.com", phone: "0601020304"), icons: ["ecoleC", "shopC"], transport: [ColoredIcons(nameIcon: "metroG", nameIconColored: "metroC", isColored: true), ColoredIcons(nameIcon: "trainG", nameIconColored: "trainC", isColored: true)], zone: [ColoredIcons(nameIcon: "arsG", nameIconColored: "arsC", isColored: true),ColoredIcons(nameIcon: "zacG", nameIconColored: "zacC", isColored: true)], pict: ["Grande-synthe"], speciality: "Médecine générale", patientsList: true, accomodationProvided: false)), star: .constant (ColoredIcons(nameIcon: "star", nameIconColored: "star.fill", isColored: true)), user: .constant (ProfilUser(id: UUID(), isDoc: true, name: "Isabella Zoe", pp: "Female4", speciality: "medGen", description: "J'ai fait l'école de médecine de Marseille, dont je suis diplomée depuis 2020.", contact: Contact(name: "Isabella Zoe", mail: "monmail@lol.fr", phone: "0600000000"), adsPublished: [Advertisement(title: "Cardiologue à Lille", town: "Lille", zipCode: "59000", description: "Mauvais temps, beaucoup de travail, pas de vie", benefits: "Soutien moral et bières.", contact: Contact(name: "Enjoy LIFE", mail: "sossauvezmoi@help.com", phone: "0070070070"), icons: ["ecoleC", "shopC"], transport: [ColoredIcons(nameIcon: "metroG", nameIconColored: "metroC", isColored: true), ColoredIcons(nameIcon: "trainG", nameIconColored: "trainC", isColored: true)], zone: [ColoredIcons(nameIcon: "arsG", nameIconColored: "arsC", isColored: true),ColoredIcons(nameIcon: "zacG", nameIconColored: "zacC", isColored: true)], pict: ["Plumebec"], speciality: "Psychologue", patientsList: false, accomodationProvided: false)], cv: "CV3", allowContact: true, allowNotif: true, adsApplied: [Advertisement(title: "Farniente à Pau", town: "Pau", zipCode: "64000", description: "Vaches, cochons, et accessoiremment êtres humains à soigner", benefits: "Transat fourni", contact: Contact(name: "Jean FOUPASUNE", mail: "poildanslamain@injoignable.fr", phone: "0700000000"), icons: ["ecoleC", "shopC"], transport: [ColoredIcons(nameIcon: "metroG", nameIconColored: "metroC", isColored: true), ColoredIcons(nameIcon: "trainG", nameIconColored: "trainC", isColored: true)], zone: [ColoredIcons(nameIcon: "arsG", nameIconColored: "arsC", isColored: true),ColoredIcons(nameIcon: "zacG", nameIconColored: "zacC", isColored: true)], pict: ["Plumebec"], speciality: "Podologue", patientsList: false, accomodationProvided: false)], adsFav: [])))
            }
        }
