//
//  AdsTextField.swift
//  DocNextDoor
//
//  Created by apprenant59 on 27/06/2022.
//

import SwiftUI

struct AdsTextField: View {
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
            HStack(alignment: .center , spacing: 10, content: {
                TextField(Title, text: $text)
                
                Text("\(text.count)/\(maxCount)")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.trailing)
                    .padding(.top,4)
                
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 350, height: 20)

        }
        .font(Font.custom("name-of-font", size: 20))
    }
}

struct AdsTextField_Previews: PreviewProvider {
    static var previews: some View {
        AdsTextField(Title: "zip", name: "test", maxCount: 15)
    }
}
