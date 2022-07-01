//
//  ListSearchView.swift
//  DocNextDoor
//
//  Created by apprenant55 on 29/06/2022.
//

import SwiftUI

struct ListSearchView: View {
    @EnvironmentObject var profilControl : ProfileControl
    var ads: [Advertisement]
    
    var body: some View {
        
        VStack {
            ForEach(ads){ ad in
                
                NavigationLink {
                    DetailedAdUIView(ad: ad)
                } label: {
                    ListSearchRow(ad: ad)
                    
                } // Fin NavigationLink
            } // FIn ForEach
        } // Fin VSTack Full view
        Spacer()
    } // Fin body
} // Fin View

struct ListSearchView_Previews: PreviewProvider {
    static var previews: some View {
        ListSearchView(ads: ads)
    }
}
