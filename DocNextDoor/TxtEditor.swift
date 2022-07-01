//
//  TxtEditor.swift
//  DocNextDoor
//
//  Created by Apprenant 11 on 29/06/2022.
//

import SwiftUI

struct AdsTextEditor: View {
    @State var Title: String
    @State var name: String
    @State var maxCount: Int
    @State var text = ""{
        //were going to use didSet Function before assigning the new value...
        //so that we can check the count...
        didSet{
            //maxCount = text.count
            if text.count > maxCount && oldValue.count <= maxCount{
                text = oldValue
            }
        }
    }
    
    // Animation Properites...
    @State var isTapped = false
    var body: some View {
        VStack(alignment: .leading) {
         //   Text(Title)
                //.foregroundColor(.gray)
               // .font(Font.custom("name-of-font", size: 20))
            VStack(alignment: .center , spacing: 10, content: {
               TextEditor(text: $text).lineLimit(500)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(20)
                        .padding(1)
                HStack {
                    Spacer()
                    Text("\(text.count)/\(maxCount)")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.trailing)
                        .padding(.top,4)
                }
               
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 350, height: 270)

        }
        .font(Font.custom("name-of-font", size: 14))
    }
}
