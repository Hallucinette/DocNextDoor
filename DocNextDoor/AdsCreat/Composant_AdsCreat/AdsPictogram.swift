////
////  AdsPictogram.swift
////  DocNextDoor
////
////  Created by apprenant59 on 21/06/2022.
////
//
//import SwiftUI
//
////Creation des boutons Transport
//
////   var transport : [ColoredIcons]? //avec [Bool = True]
//
//struct AdsPictogram: View {
//    
//    
//   // ColoredIcons.init(nameIcon: "figure.walk.circle", nameIconColored: "figure.wave", isColored: false)
//    var nameIcon: String
//    var nameIconColored: String
//    var isColored: Bool
//    
//    
//    @State private var color: Color = .gray
//    @State var boolTransport: Bool = false
//  //  @State var test33: String
//    var body: some View {
//        
//       VStack{
//            Button {
//                if color == .gray{
//                    color = .red
//                    boolTransport = test(color: color, boolTransport: boolTransport)
//              //      test33 = "1"
//                } else {
//                    color = .gray
//                    boolTransport = test(color: color, boolTransport: boolTransport)
//           //         test33 = "2"
//                }
//  //              boolTransport = test(color: color, boolTransport: boolTransport)
//            } label: {
//                VStack{
//                Image(systemName: picto)
//                    .foregroundColor(color)
//             //   Text(test33)
//                }
//            }
//        }
//        .font(.title)
//        .padding()
//    }
//}
//
//func test(color: Color, boolTransport: Bool) -> Bool {
//
//    @State var boolTrans = boolTransport
//    
//    if color == .gray{
//        //color = .red
//        boolTrans = true
//    } else {
//        //color = .gray
//        boolTrans = false
//    }
//    
//    return boolTrans
//}
//
//struct AdsPictogram_Previews: PreviewProvider {
//    static var previews: some View {
//        AdsPictogram(picto: "tram.circle")//, test33: "4")
//    }
//}
