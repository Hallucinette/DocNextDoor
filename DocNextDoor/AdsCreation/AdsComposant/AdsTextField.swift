//
//  AdsTextField.swift
//  DocNextDoor
//
//  Created by apprenant59 on 27/06/2022.
//

import SwiftUI

struct AdsTextField: View {
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
    //@StateObject var manager = TFManager()
    
    // Animation Properites...
    @State var isTapped = false
    var body: some View {
        VStack(alignment: .leading) {
            Text("Name")
            HStack {
                TextField("name", text: $text)
                   // .background(Color.gray.opacity(0.09))
                
                Text("\(text.count)/\(maxCount)")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.trailing)
                    .padding(.top,4)
            }
//            .background(Color.gray.opacity(0.09))
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 250, height: 50)
//            .background(Color.gray.opacity(0.09))
//            .cornerRadius(20)
        }
        .padding()
    }
}
//        VStack(alignment: .leading, spacing: 4, content: {
//               // Rectangle({
//                HStack{
//                    TextField("", text: $text) { (status) in
//
//                        if status{
//                        withAnimation(){
////                                // moving hint to top..
//                              // name = ""
//                                isTapped = true
//                            }
//                        }
//                    } onCommit: {
////                        // it will fire when return button is pressed
////                        // only if no text typed..
//                        if text == ""{
//                            withAnimation(){
//                                isTapped = false
//                            }
//                        }
//                   }
//
//                        .background(
//
//                            Text("\(name)")
//                                .foregroundColor(isTapped ? .gray : .gray)
//
//                            ,alignment: .leading
//
//                        )
//                        .frame(width: 250, height: 50)
//
//                    Text("\(text.count)/\(maxCount)")
//                        .font(.caption)
//                        .foregroundColor(.gray)
//                        .padding(.trailing)
//                        .padding(.top,4)
//                }
//            })
//        .padding(.horizontal ,20)
//                .background(Color.gray.opacity(0.09))
//                .cornerRadius(20)
//        }
//       // .padding(.leading)
//    }
//}

struct AdsTextField_Previews: PreviewProvider {
    static var previews: some View {
        AdsTextField(name: "test", maxCount: 15)
    }
}
