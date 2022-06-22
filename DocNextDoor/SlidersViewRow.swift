//
//  SlidersViewRow.swift
//  DocNextDoor
//
//  Created by apprenant55 on 21/06/2022.
//

import SwiftUI


struct SlidersViewRow: View {
    
    @State var sliderValue: Double
    var sliderLabel: String
    var sliderUnit: String
    var sliderRangeMin: Double
    var sliderRangeMax: Double
    var sliderStep: Double
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(sliderLabel)
            HStack {
                Slider(value: $sliderValue, in: sliderRangeMin...sliderRangeMax, step: sliderStep)
                    .tint(Color("Lightblue"))
                Text("\(Int(sliderValue))"+" "+sliderUnit)
                    .foregroundColor(.gray)
            }//.padding()
        }
    }
}

struct SlidersViewRow_Previews: PreviewProvider {
    static var previews: some View {
        SlidersViewRow(sliderValue: 0.0, sliderLabel: "Descriptif", sliderUnit: "EUR", sliderRangeMin: 0.0, sliderRangeMax: 10_000.0, sliderStep: 50.0)
    }
}
