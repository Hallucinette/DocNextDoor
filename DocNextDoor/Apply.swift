//
//  Apply.swift
//  DocNextDoor
//
//  Created by Apprenant 11 on 23/06/2022.
//

import SwiftUI

struct Apply: View {
    var body: some View {
        Text("Postuler")
            .font(.headline)
                .padding(15)
                .background(Color("Darkblue"))
                .cornerRadius(45)
                .foregroundColor(.white)
                .padding(30)
    }
}

struct Apply_Previews: PreviewProvider {
    static var previews: some View {
        Apply()
    }
}
