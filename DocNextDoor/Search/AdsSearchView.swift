//
//  AdsSearchView.swift
//  DocNextDoor
//
//  Created by apprenant55 on 27/06/2022.
//

import SwiftUI

struct AdsSearchView: View {
    
    @State private var searchField = ""
    @State private var researchMode = 0
    
    var body: some View {
        NavigationView{
            VStack {
                VStack {
                    Text("Recherche").bold().font(.title2).padding(10)
                    Rectangle().frame(width: 390, height: 3, alignment: .center).foregroundColor(Color("Lightblue")).padding(5)
                }
                Text("\(searchField)") //Rechercher un
                    .searchable(text: $searchField, prompt: "Rechercher dans les annonces")
                //                                .navigationTitle("")
                

                Picker("Mode de recherche: ", selection: $researchMode) {
                    Text("Liste") //adsListView()
                        .tag(0)
                    Text("Carte") //adsListMap()
                        .tag(1)
                }
                .pickerStyle(.segmented)
                //            }
                
                //            researchMode == 0 ? FiltersView() : medicCenterList()
                if researchMode == 0 {
                    ListSearchView(ads: ads)
                        .padding()
                } else {
                    MapSimple(ads: ads) // MapView()
                        .padding()
                }
            }
//            .navigationTitle("")
//            .padding()

        }
    }
} // Fin de View

struct AdsSearchView_Previews: PreviewProvider {
    static var previews: some View {
        //        NavigationView{
        AdsSearchView()
        //        }
    }
}




/*
 var isOverpeed: Bool {
 speed > 90
 }
 */


