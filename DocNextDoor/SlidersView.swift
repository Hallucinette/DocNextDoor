//
//  SlidersView.swift
//  DocNextDoor
//
//  Created by apprenant55 on 21/06/2022.
//

import SwiftUI

struct SlidersView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

/*
 @State private var valueRed = 0.0
 @State private var valueGreen = 0.0
 @State private var valueBlue = 0.0

 */
/*
 VStack {
     Spacer()
     Color(red: valueRed/255, green: valueGreen/255, blue: valueBlue/255)
         .frame(maxWidth: 200, maxHeight: 200)
     Spacer()
     HStack {
         VStack {
             HStack {
                 Text("0")
                 Slider(value: $valueRed, in: 0...255, step: 1)
                 Text("255")
             }
             Text("Red: \(Int(valueRed))")
         }
         VStack {
             HStack {
                 Text("0")
                 Slider(value: $valueGreen, in: 0...255, step: 1)
                 Text("255")
             }
             Text("Green: \(Int(valueGreen))")
         }
         VStack {
             HStack {
                 Text("0")
                 Slider(value: $valueBlue, in: 0...255, step: 1)
                 Text("255")
             }
             Text("Blue: \(Int(valueBlue))")
         }
     }
     .padding()
 }
 */

/*
 struct SpeedLimit: View {
     @State private var speed = 0.0
     
     var isOverpeed: Bool {
         speed > 90
     }

 */

/*
 VStack {
     Circle()
         .stroke(isOverpeed ? .red : .blue, lineWidth: 20)
         .overlay(
             Text("\(Int(speed))")
                 .font(.largeTitle)
                 .bold()
         )
     Text("\(isOverpeed ? "Excès vitesse" : "Vitesse règlementaire")")
         .font(.title)
     Slider(value: $speed, in: 0...300, step: 1)
 }
 .padding()
 
 */

struct SlidersView_Previews: PreviewProvider {
    static var previews: some View {
        SlidersView()
    }
}
