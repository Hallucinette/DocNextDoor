//
//  Helpers.swift
//  DocNextDoor
//
//  Created by Apprenant 91 on 21/06/2022.
//

import SwiftUI

// view formating extension
extension View {
    func formatText()  -> some View {
        self.font(.headline).frame(
            maxWidth: .infinity,
            maxHeight: .infinity)
    }
    func formatSmallImage()  -> some View {
        self.frame(width: 120, height: 80).padding(5)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("Darkblue"), lineWidth: 4)
            )
    }
    func formatMediumImage()  -> some View {
        self.overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("Darkblue"), lineWidth: 4)
        )
        .frame(width: 350, height: 150).padding(5)
    }
    func addBlueLine()  -> some View {
        Rectangle().frame(width: 600, height: 3, alignment: .center).foregroundColor(Color("Lightblue"))
    }
}


struct Helpers: View {
    var body: some View {
        Text("")
    }
}

struct Helpers_Previews: PreviewProvider {
    static var previews: some View {
        Helpers()
    }
}
