//
//  AdDiscoverUIView.swift
//  DocNextDoor
//
//  Created by Apprenant 91 on 17/06/2022.
//

import SwiftUI

struct AdDiscoverUIView: View {
    var body: some View {
        ZStack {
            Color("BackG").ignoresSafeArea()
        VStack {
        Text("Annonces à la une")
                .bold()
                .font(.title2)
        }
        }
    }
}

struct AdDiscoverUIView_Previews: PreviewProvider {
    static var previews: some View {
        AdDiscoverUIView()
    }
}
