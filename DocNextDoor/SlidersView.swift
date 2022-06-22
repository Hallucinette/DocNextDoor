//
//  SlidersView.swift
//  DocNextDoor
//
//  Created by apprenant55 on 21/06/2022.
//

import SwiftUI

struct SlidersView: View {
    
    @State var maxRent = 0.0
    @State var maxDistSchool = 0.0
    @State var maxDistIDZ = 0.0
    @State var maxDistHospital = 0.0
    
    var body: some View {
        
        VStack {
//            Text("Filtres").font(.title2)
            List {
                Group {
                    Text("Spécialité")
                    Text("Type de structure")
                }
                Group {
                    Text("Vente patientelle")  // toggleswitch
                    Text("Logement mis à disposition")  // toggleswitch
                }
                Group {
                    SlidersViewRow(sliderValue: maxRent, sliderLabel: "Montant maximum du loyer", sliderUnit: "EUR", sliderRangeMin: 0.0, sliderRangeMax: 10_000.0, sliderStep: 50.0)
                    SlidersViewRow(sliderValue: maxDistSchool, sliderLabel: "Distance maximum école / crèche", sliderUnit: "Km", sliderRangeMin: 0.0, sliderRangeMax: 100.0, sliderStep: 5.0)
                    SlidersViewRow(sliderValue: maxDistIDZ, sliderLabel: "Distance maximum centre commercial / ZAC", sliderUnit: "Km", sliderRangeMin: 0.0, sliderRangeMax: 100.0, sliderStep: 5.0)
                    SlidersViewRow(sliderValue: maxDistHospital, sliderLabel: "Distance maximum hôpital / maison médicale de garde", sliderUnit: "Km", sliderRangeMin: 0.0, sliderRangeMax: 100.0, sliderStep: 5.0)
              
                }
                Group {
                    Text("Transports à proximité") // Logos
                    Text("Quartiers prioritaires") // Logos
                }
            }
            .padding()
            .navigationTitle("Filtres")
            Button {
                // apply and save userFilters
                //                .onTapGesture {
                //                       print("Filtres appliqués")
            } label: {
                Text("Appliquer les filtres")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            }
        }
    }
}


struct SlidersView_Previews: PreviewProvider {
    static var previews: some View {
        SlidersView()
    }
}
