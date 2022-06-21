//
//  SlidersView.swift
//  DocNextDoor
//
//  Created by apprenant55 on 21/06/2022.
//

import SwiftUI

struct SlidersView: View {
    
    @State var maxRent = 0.0
    @State var maxDistSchool = 0.0
    @State var maxDistIDZ = 0.0
    @State var maxDistHospital = 0.0
    
    var body: some View {
        VStack {
            //            Spacer()
            //            Spacer()
            VStack {
                Text("Montant maximum du loyer")
                HStack {
                    Slider(value: $maxRent, in: 0...10_000, step: 50)
                        .tint(.red)
                    //                        .Color("LightBlue")
                    Text("\(Int(maxRent)) EUR")
                        .foregroundColor(.gray)
                }
                
            }
            VStack {
                Text("Distance maximum école / crèche")
                HStack {
                    Slider(value: $maxDistSchool, in: 0...100, step: 10)
                    Text("\(Int(maxDistSchool)) Km")
                        .foregroundColor(.gray)
                }
            }
            VStack {
                Text("Distance maximum centre commercial / ZAC")
                HStack {
                    Slider(value: $maxDistIDZ, in: 0...100, step: 10)
                    Text("\(Int(maxDistIDZ)) Km")
                        .foregroundColor(.gray)
                }
            }
            VStack {
                HStack {
                    Text("Distance maximum hôpital / maison médicale de garde")
                    Slider(value: $maxDistHospital, in: 0...100, step: 10)
                    Text("\(Int(maxDistHospital)) Km")
                        .foregroundColor(.gray)
                }
            }
            
            
        }.padding()
    }
}









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
