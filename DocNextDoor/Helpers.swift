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
        self.font(.subheadline).frame(
            maxWidth: .infinity,
            maxHeight: .infinity)
    }
    func formatLargeText()  -> some View {
        self.font(.headline)
    }
    func formatIcon()  -> some View {
        self.aspectRatio(contentMode: .fit)
            .frame(width: 25, height: 25)
            .foregroundColor(Color("Lightblue"))
    }
    func formatSmallImage()  -> some View {
        self.frame(width: 120, height: 90).padding(5)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("Darkblue"), lineWidth: 2)
            )
    }
    func formatMediumImage()  -> some View {
        self.overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("Darkblue"), lineWidth: 2)
        )
        .frame(width: 300, height: 150).padding(5)
    }
    func addBlueLine()  -> some View {
        Rectangle().frame(width: 450, height: 3, alignment: .center).foregroundColor(Color("Lightblue"))
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
