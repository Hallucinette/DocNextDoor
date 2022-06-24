//
//  FiltersView.swift
//  DocNextDoor
//
//  Created by apprenant55 on 24/06/2022.
//

import SwiftUI

struct FiltersView: View {
    
    @State var maxRent = 0.0
    @State var maxDistSchool = 0.0
    @State var maxDistIDZ = 0.0
    @State var maxDistHospital = 0.0
    //    @Binding var patientsList = false
    //  var aTest = maxRent
    
    
    var body: some View {
        
        VStack {
            //            Text("Filtres").font(.title2)
            List {
                Group {
                    //                    HStack {
                    //                        Text("Spécialité")
                    //                        Toggle("Vente patientelle", isOn: $patientsList)
                    //                            .toggleStyle(SwitchToggleStyle(tint: Color("Darkblue")))
                    //                        patientsList == true ? patientsList = true : p{
                    //                            // Afficher array if ... = true dans l'instance
                    //                        }
                    //                    }
                    //                    Text("Type de structure")
                    //                }
                    Group {
                        Text("Vente patientelle")  // toggleswitch
                        Text("Logement mis à disposition")  // toggleswitch
                    }
                    Group {
                        FiltersViewRow(sliderValue: maxRent, sliderLabel: "Montant maximum du loyer", sliderUnit: "EUR", sliderRangeMin: 0.0, sliderRangeMax: 10_000.0, sliderStep: 50.0).tag("RentSlider")
                        FiltersViewRow(sliderValue: maxDistSchool, sliderLabel: "Distance maximum école / crèche", sliderUnit: "Km", sliderRangeMin: 0.0, sliderRangeMax: 100.0, sliderStep: 5.0).tag("DistSchoolSlider")
                        FiltersViewRow(sliderValue: maxDistIDZ, sliderLabel: "Distance maximum centre commercial / ZAC", sliderUnit: "Km", sliderRangeMin: 0.0, sliderRangeMax: 100.0, sliderStep: 5.0).tag("DistIDZSlider")
                        FiltersViewRow(sliderValue: maxDistHospital, sliderLabel: "Distance maximum hôpital / maison médicale de garde", sliderUnit: "Km", sliderRangeMin: 0.0, sliderRangeMax: 100.0, sliderStep: 5.0).tag("DistHospitalSlider")
                        
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
                
                //            Text("sliderValue.maxRent:\(sliderValue.maxRent)") //aTest
                //            var aTest = RentSlider.maxRent
                //            Text("aTest:\(aTest)")
            }
        }
    }
}

struct FiltersView_Previews: PreviewProvider {
    static var previews: some View {
        FiltersView()
    }
}

