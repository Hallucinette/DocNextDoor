//
//  AdsSearchView.swift
//  DocNextDoor
//
//  Created by apprenant55 on 27/06/2022.
//

import SwiftUI

struct AdsSearchView: View {
    
    @State private var researchMode = 0
    @State private var searchField = ""
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        VStack {
            //                Text("Annonces")
            //                    .font(.largeTitle)
            //                    .bold()
            Text("\(searchField)") //Rechercher un
                .searchable(text: $searchField, prompt: "Rechercher dans les annonces")
            //                                .navigationTitle("")
            
            
            //                List {
            
            //                    ForEach( researchMode ? adsListView() : adsListMap()) { ad in
            //
            //                    }
            //                }
            
            /*
             List {
             ForEach( pickerList == 0 ? AdvertisementData.ads : MapView()) {  ad in
             // List
             */
            
            //            NavigationLink(destination: ) {
            //                var whereToGo {
            //                    researchMode == 0 ? adsListView() : adsListMap()
            //                }
            //            } label: {
            Picker("Mode de recherche: ", selection: $researchMode) {
                Text("Liste") //adsListView()
                    .tag(0)
                Text("Carte") //adsListMap()
                    .tag(1)
            }
            .pickerStyle(.segmented)
            //            }
            
            if researchMode == 0 {
                FiltersView()
            } else {
                medicCenterList()
            }
        }
        .navigationTitle("Annonces")
        //            .navigationTitle("Filtres")
        //            .navigationBarTitleDisplayMode(.inline)//.alignment(.trailing)
        
//        isTapped ? Color.accentColor : Color.gray
    }
}

struct AdsSearchView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AdsSearchView()
        }
    }
}




/*
 var isOverpeed: Bool {
 speed > 90
 }
 */


