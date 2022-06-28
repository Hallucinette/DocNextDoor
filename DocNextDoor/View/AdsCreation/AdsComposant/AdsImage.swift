//
//  Adsimage.swift
//  DocNextDoor
//
//  Created by apprenant59 on 21/06/2022.
//

import SwiftUI

// Creationdu composant image + bouton ajouter image

struct Adsimage: View {
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color.gray)
                .frame(width: 300, height: 200, alignment: .center)
            VStack(){
                Button(action: {
                    print("Add photo !")
                }) {
                        Image(systemName: "plus.circle")
                            .font(.title)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("Lightblue"))
                            .cornerRadius(40)
                }
            }
            .padding(.top, 150)
            .padding(.leading, 280)
        }
    }
}

struct Adsimage_Previews: PreviewProvider {
    static var previews: some View {
        Adsimage()
    }
}
