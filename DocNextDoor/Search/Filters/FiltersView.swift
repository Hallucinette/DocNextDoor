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
<<<<<<< HEAD:DocNextDoor/Search/Filters/FiltersView.swift
                        FiltersViewRow(sliderValue: $maxRent, sliderLabel: "Montant maximum du loyer", sliderUnit: "EUR", sliderRangeMin: 0.0, sliderRangeMax: 10_000.0, sliderStep: 50.0).tag("RentSlider")
                            .tag("rentValue")
                        FiltersViewRow(sliderValue: $maxDistSchool, sliderLabel: "Distance maximum école / crèche", sliderUnit: "Km", sliderRangeMin: 0.0, sliderRangeMax: 100.0, sliderStep: 5.0).tag("DistSchoolSlider")
                            .tag("schoolValue")
                        FiltersViewRow(sliderValue: $maxDistIDZ, sliderLabel: "Distance maximum centre commercial / ZAC", sliderUnit: "Km", sliderRangeMin: 0.0, sliderRangeMax: 100.0, sliderStep: 5.0).tag("DistIDZSlider")
                            .tag("IDZValue")
                        FiltersViewRow(sliderValue: $maxDistHospital, sliderLabel: "Distance maximum hôpital / maison médicale de garde", sliderUnit: "Km", sliderRangeMin: 0.0, sliderRangeMax: 100.0, sliderStep: 5.0).tag("DistHospitalSlider")
                            .tag("hospitalValue")
=======
                        FiltersViewRow(sliderValue: maxRent, sliderLabel: "Montant maximum du loyer", sliderUnit: "EUR", sliderRangeMin: 0.0, sliderRangeMax: 10_000.0, sliderStep: 50.0).tag("RentSlider")
                            .tag("rentValue")
                        FiltersViewRow(sliderValue: maxDistSchool, sliderLabel: "Distance maximum école / crèche", sliderUnit: "Km", sliderRangeMin: 0.0, sliderRangeMax: 100.0, sliderStep: 5.0).tag("DistSchoolSlider")
                            .tag("schoolValue")
                        
                        
                        FiltersViewRow(sliderValue: maxDistIDZ, sliderLabel: "Distance maximum centre commercial / ZAC", sliderUnit: "Km", sliderRangeMin: 0.0, sliderRangeMax: 100.0, sliderStep: 5.0).tag("DistIDZSlider")
                            .tag("IDZValue")
                        FiltersViewRow(sliderValue: maxDistHospital, sliderLabel: "Distance maximum hôpital / maison médicale de garde", sliderUnit: "Km", sliderRangeMin: 0.0, sliderRangeMax: 100.0, sliderStep: 5.0).tag("DistHospitalSlider")
                            .tag("hospitalValue")
                        
>>>>>>> da2e30e (Push on self branch before pull AssistMain):DocNextDoor/Filters/FiltersView.swift
                    }
                    Group {
                        Text("Transports à proximité") // Logos
                        Text("Quartiers prioritaires") // Logos
                    }
                }
                .padding()
                .navigationTitle("Filtres")
                Button{ //(alignment: .center)
                    // apply and save userFilters
                    //                .onTapGesture {
                    //                       print("Filtres appliqués")
                } label: {
                    Text("Appliquer les filtres")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                } // .alignment(center)
                
                //            Text("sliderValue.maxRent:\(sliderValue.maxRent)") //aTest
                //            var aTest = RentSlider.maxRent
                //            Text("aTest:\(aTest)")
                Text("La valeur de maxRent est de: \(maxRent)") //rentValue.maxRent, $maxRent.sliderValue
            }
        }
    }
}

struct FiltersView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            FiltersView()
        }
    }
}

