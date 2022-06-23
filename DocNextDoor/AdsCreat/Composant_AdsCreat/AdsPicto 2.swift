//
//  AdsPictogram.swift
//  DocNextDoor
//
//  Created by apprenant59 on 21/06/2022.
//

import SwiftUI

//Creation des boutons Transport

//   var transport : [ColoredIcons]? //avec [Bool = True]

struct AdsPicto: View {
    
  //  @State var test: ColoredIcons
    var nameIcon: String = "tram.circle"
    var nameIconColored: String = "figure.wave"
    @State var isColored: Bool
   // @State var newIcon: String

    
    var body: some View {

       VStack{
            Button {
                if isColored == false{
                    isColored = true
                } else {
                    isColored = false
                }
            } label: {
                VStack{
                   // Image(systemName: newIcon)
                    if isColored == false {
                        Image(systemName: nameIcon)
                        //isColored = true
                    }
                    else
                    {
                        Image(systemName: nameIconColored)
                      //  isColored = false
                    }
                }
            }
        }
        .font(.title)
        .padding()
    }
}


struct AdsPicto_Previews: PreviewProvider {
    static var previews: some View {
        AdsPicto(nameIcon: "tram.circle", nameIconColored: "figure.wave", isColored: false)
    }
}
