//
//  Helpers.swift
//  DocNextDoor
//
//  Created by Apprenant 91 on 21/06/2022.
//

import SwiftUI

// view formating extension
extension View {
    func formatTinyGreyText()  -> some View {
        self.font(.footnote)
            .foregroundColor(.gray)
    }
    func formatTinyOrangeText()  -> some View {
        self.font(.footnote)
            .foregroundColor(.orange)
            .frame(alignment: .center)
    }
    func formatText()  -> some View {
        self.font(.subheadline)
    }
    func formatLargeText()  -> some View {
        self.font(.headline)
    }
    func formatTitle()  -> some View {
        self.font(.body)
    }
    func formatIcon()  -> some View {
        self.aspectRatio(contentMode: .fit)
            .frame(width: 40, height: 40)
            .foregroundColor(Color("Darkblue"))
    }
    func formatSmallImage()  -> some View {
        self.frame(width: 120, height: 90)
            .cornerRadius(10.0)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("Darkblue"), lineWidth: 2)
            )
    }
    func formatMediumImage()  -> some View {
        self.frame(width: 300, height: 150)
            .cornerRadius(10.0)
            .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("Darkblue"), lineWidth: 2)
        )
    }
    func addBlueLine()  -> some View {
        Rectangle().frame(width: 390, height: 3, alignment: .center).foregroundColor(Color("Lightblue"))
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
