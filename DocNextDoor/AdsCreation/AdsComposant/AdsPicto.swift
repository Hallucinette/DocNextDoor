//
//  AdsPictogram.swift
//  DocNextDoor
//
//  Created by apprenant59 on 21/06/2022.
//

import SwiftUI

//Creation des boutons Transport

struct AdsPicto: View {
    
    var nameIcon: String
    var nameIconColored: String
    @State var isColored: Bool


    
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
                    if isColored == false {
                        Image(nameIcon)
                            .resizable()
                          //  .frame(width: 60, height: 60)
                            .frame(width: 50, height: 60)
                        //isColored = true
                    }
                    else
                    {
                        Image(nameIconColored)
                            /*.resizable()
                            .frame(width: 50, height: 60)*/
                            .resizable()
                            .renderingMode(.template)
                            .formatIcon()
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
        AdsPicto(nameIcon: "trainG", nameIconColored: "trainC", isColored: false)
    }
}
