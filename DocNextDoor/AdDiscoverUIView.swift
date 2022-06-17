//
//  AdDiscoverUIView.swift
//  DocNextDoor
//
//  Created by Apprenant 91 on 17/06/2022.
//

import SwiftUI

struct AdDiscoverUIView: View {
    var body: some View {
        VStack {
        Text("Annonces à la une")
                .bold()
                .font(.largeTitle)
        }
    }
}

struct AdDiscoverUIView_Previews: PreviewProvider {
    static var previews: some View {
        AdDiscoverUIView()
    }
}
