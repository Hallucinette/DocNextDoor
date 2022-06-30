//
//  FiltersView.swift
//  DocNextDoor
//
//  Created by apprenant55 on 24/06/2022.
//

import SwiftUI

struct FiltersView: View {
    
    @AppStorage ("maxRent") var maxRent = 0.0
    @AppStorage ("maxDistSchool") var maxDistSchool = 0.0
    @AppStorage ("maxDistIDZ") var maxDistIDZ = 0.0
    @AppStorage ("maxDistHospital") var maxDistHospital = 0.0
    //    @Binding var patientsList = false
    //  var aTest = maxRent
    
    
    var body: some View {
        
        VStack {
            //            Text("Filtres").font(.title2)
            List {
                Group {
                    NavigationLink {
                        specialtiesList()
                    } label: {
                        Text("Spécialité")
                    }
                    HStack {
                        
                        //                        Toggle("Vente patientelle", isOn: $patientsList)
                        //                            .toggleStyle(SwitchToggleStyle(tint: Color("Darkblue")))
                        //                        patientsList == true ? patientsList = true : p{
                        //                            // Afficher array if ... = true dans l'instance
                        //                        }
                    }
                    Text("Type de structure")
                }
                Group {
                    Text("Vente patientelle")  // toggleswitch
                    Text("Logement mis à disposition")  // toggleswitch
                }
                Group {
                    
                    FiltersViewRow(sliderValue: $maxRent, sliderLabel: "Montant maximum du loyer", sliderUnit: "EUR", sliderRangeMin: 0.0, sliderRangeMax: 10_000.0, sliderStep: 50.0).tag("RentSlider")
                    FiltersViewRow(sliderValue: $maxDistSchool, sliderLabel: "Distance maximum école / crèche", sliderUnit: "Km", sliderRangeMin: 0.0, sliderRangeMax: 100.0, sliderStep: 5.0).tag("DistSchoolSlider")
                    FiltersViewRow(sliderValue: $maxDistIDZ, sliderLabel: "Distance maximum centre commercial / ZAC", sliderUnit: "Km", sliderRangeMin: 0.0, sliderRangeMax: 100.0, sliderStep: 5.0)
                    FiltersViewRow(sliderValue: $maxDistHospital, sliderLabel: "Distance maximum hôpital / maison médicale de garde", sliderUnit: "Km", sliderRangeMin: 0.0, sliderRangeMax: 100.0, sliderStep: 5.0)
                }
                Group {
                    Text("Transports à proximité") // Logos
                    Text("Quartiers prioritaires") // Logos
                }
            }
            .padding()
            .navigationTitle("Filtres")
            
            NavigationLink { //(alignment: .center) (alignment: .center)
                AdsSearchView()
            } label: {
                Text("Appliquer les filtres")
                    .padding()
                    .background(.blue) // .tint(Color("Darkblue"))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            }
        }
    }
}


struct FiltersView_Previews: PreviewProvider {
    static var previews: some View {
//        NavigationView{
            FiltersView()
//        }
    }
}

