//
//  AD txtfield.swift
//  DocNextDoor
//
//  Created by Apprenant 11 on 27/06/2022.
//

import SwiftUI

struct TxtFieldApply: View{
    var icon : String
    var nbCar : CGFloat
    var txt : String
    @StateObject var manager = TFManager()
    // Animation Properites...
    @State var isTapped = false
    var body: some View {
        
        VStack{
            VStack(alignment: .leading, spacing: 4, content: {
                
                HStack(spacing: 15){
                    
                    //were going to limit the textfiled length...
                    
                    TextField("", text: $manager.text) { (status) in
                        // it will fire when textfield is clicked...
                        if status{
                            withAnimation(.easeIn){
                                // moving hint to top..
                                isTapped = true
                            }
                        }
                    } onCommit: {
                        // it will fire when return button is pressed
                        // only if no text typed..
                        if manager.text == ""{
                            withAnimation(.easeOut){
                                isTapped = false
                            }
                        }
                    }
                    // Trailing Icon Or Button...
                    
                    Button(action: {}, label: {
                        Image(systemName: icon)
                            .foregroundColor(.gray)
                    })
                }
                // if tapped...
                .padding(.top,isTapped ? nbCar : 0)
                // ovelay will avoid clicking the textfiled...
                // so moving it below the textfield..
                .background(
                    
                    Text(txt)
                        .scaleEffect(isTapped ? 0.8 : 1)
                        .offset(x: isTapped ? -7 : 0, y: isTapped ? -15 : 0)
                        .foregroundColor(isTapped ? .accentColor : .gray)
                    
                    ,alignment: .leading
                        
                )
                .padding(.horizontal)
                //Divider Color...
                Rectangle()
                    .fill(isTapped ? Color.accentColor : Color.gray)
                    .opacity(isTapped ? 1 : 0.5)
                    .frame(height: 1)
                    .padding(.top, 250)
            })
            .padding(.top,12)
            .background(Color.gray.opacity(0.09))
            .cornerRadius(5)
            
            //Displaying Count...
            HStack{
                Spacer()
                
                Text("\(manager.text.count)/\(Int(nbCar))")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.trailing)
                    .padding(.top,4)
            }

        }
        .padding()
    }
}

class TFManager : ObservableObject {
    
   // var maxCount: Int
    
    @Published var text = ""{
        //were going to use didSet Function before assigning the new value...
        //so that we can check the count...
        didSet{
            if text.count > 3000 && oldValue.count <= 3000 {
                text = oldValue
            }
        }
    }
}

